from flask import Blueprint, request, jsonify
from __init__ import mysql
import MySQLdb.cursors

library_bp = Blueprint('libary', __name__)

@library_bp.route('/get/', methods=['POST'])
def library():
    content = request.json
    if content['type'] == 'playlist':
        return jsonify(get_all_playlist(content['id']))
    elif content['type'] == 'album':
        return jsonify(get_all_album(content['id']))
    else:
        return jsonify(get_all_artist(content['id']))
    
def get_all_artist(user):
    cursor = cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(f'''
        select A.id, A.name
        from FollowArtist F, Artist A
        where F.user='{user}' and F.artist=A.id
    ''')
    artists = cursor.fetchall()

    artist_list = []
    for artist in artists:
        artist_list.append(
            {
                "id":artist['id'],
                "name":artist['name'],
            }
        )
    return artist_list



#------
def get_all_album(user):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(f'''
        select A.title, A.id,max(C.name) as name
        from LikesAlbum L, Album A, Making M, Artist C
        where L.user='{user}' and L.album=A.id and M.album=A.id and M.artist=C.id
        group by A.id
    ''')
    albums = cursor.fetchall()

    album_list = []
    for album in albums:
        temp = {
            "type":"album",
            "title":album['title'],
            "link":album['id'],
            "artist":album['name'],
            "playlistData":[]
        }

        cursor.execute(f'''
            select T.id, T.title,T.duration
            from TrackBelongsToAlbum B, Track T
            where B.album='{album['id']}' and T.id=B.track
        ''')
        tracks = cursor.fetchall()

        index = 0
        for track in tracks:
            temp['playlistData'].append(
                {
                    "index":str(index),
                    "id":track['id'],
                    "songName":track['title'],
                    "songArtist":album['name'],
                    "trackTime":track['duration']
                }
            )
            index += 1
        album_list.append(temp)
    return album_list





# -----
def get_all_playlist(user):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(f'''
        select P.name, P.id, U.username
        from Playlist P, LikesPlaylist L, User U
        where L.user='{user}' and P.id=L.playlist and U.id=P.creator
    ''')
    playlists = cursor.fetchall()

    playlist_list = []

    for playlist in playlists:
        temp = {
            "type":"playlist",
            "title":playlist['name'],
            "link":playlist['id'],
            "artist":playlist['username'],
            "playlistData":[]
        }

        cursor.execute(f'''
            select  T.id, T.title,T.duration
            from TrackBelongsToPlaylist B, Track T, TrackBelongsToAlbum E
            where B.playlist='{playlist['id']}' and B.track=T.id and E.track=T.id
            order by B.addedDate
        ''')
        tracks = cursor.fetchall()

        index = 0
        for track in tracks:
            cursor.execute(f'''
                select C.name
                from TrackBelongsToAlbum B, Album A, Making M, Artist C
                where B.track='{track['id']}' and B.album=A.id and M.album=B.album and M.artist=C.id
                limit 1
            ''')
            data = cursor.fetchone()
            temp['playlistData'].append(
                {
                    "index":str(index),
                    "id":track['id'],
                    "songName":track['title'],
                    "songArtist":data['name'],
                    "trackTime":track['duration']
                }
            )
            index += 1
        playlist_list.append(temp)
    return playlist_list


    