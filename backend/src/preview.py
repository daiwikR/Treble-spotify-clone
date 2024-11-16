import requests
from flask import Blueprint
from __init__ import mysql
import MySQLdb.cursors

URL_GET_TRACK = 'https://api.spotify.com/v1/tracks/{}'  
URL_GET_ARTIST = 'https://api.spotify.com/v1/artists/{}' 

TOKEN = 'BQAwB3aALPVgXvYHZuJlnyTbpwUlUCtapRLz0Mw1Aro7VPQWMxqGcpt_HbKkId71Zcpf3bvOawbvjt8hHgwjPBvXX62knCSAaR_fPKuyNcgIOYqYD4lralOSjHesSY_YwUimEuhXOkOFWo9zFRlBht-8UvIEDNM'

preview_bp = Blueprint('preview', __name__)

@preview_bp.route('/artist/')
def create_artist():
    rick_roll = 'https://i.scdn.co/image/ab67616d0000b2734b37560bb0fb287011ae6a60'
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT id FROM Artist WHERE image='/'")
    artists = cursor.fetchall()
    for artist in artists:
        image_url = get_image_artist(artist['id'])
        if image_url == None:
            image_url = rick_roll
        cursor.execute(
            f"UPDATE Artist SET image='{image_url}' WHERE id='{artist['id']}'")
    mysql.connection.commit()
    return "<h2> Complete </h2>"


def get_image_artist(artist_id):
    response = requests.get(
        URL_GET_ARTIST.format(artist_id),
        headers={
            'Authorization': 'Bearer {}'.format(TOKEN)
        }
    ).json()
    for image in response['images']:
        print(image['url'])
        return image['url']
    return None
