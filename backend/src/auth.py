from flask import Blueprint, Flask, request, jsonify
from __init__ import mysql
import MySQLdb.cursors
import string
import random
import hashlib
auth_bp = Blueprint('auth', __name__)

ID_EXISTS = (
    "SELECT * "  
    "FROM User "
    "WHERE id = '{}'"
)

@auth_bp.route('/signup/', methods=['POST'])
def signup():
    content = request.json
    print(content)
    username = content['username'].replace("'", " ")
    password = content['password']
    email = content['email'].replace("'", " ")
    hashed_password = hashlib.sha256(password.encode()).hexdigest()
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)

    cursor.execute(f"SELECT * FROM User WHERE username='{username}'")
    account_username = cursor.fetchone()

    cursor.execute(f"SELECT * FROM User WHERE email='{email}'")
    account_email = cursor.fetchone()

    if account_username and account_email:
        return jsonify(error="Account already exists !")
    elif account_username:
        return jsonify(error=f"'{username}' already exists !")
    elif account_email:
        return jsonify(error=f"'{email}' already exists !")
    else:
        id = ''.join(random.choices(string.ascii_lowercase + string.digits, k=22))
        cursor.execute(ID_EXISTS.format(id))
        while cursor.fetchone():
            id = ''.join(random.choices(string.ascii_lowercase + string.digits, k=22))
            cursor.execute(ID_EXISTS.format(id))
        cursor.execute(
            f"INSERT INTO User (id, username, email, password) VALUES('{id}', '{username}', '{email}', '{password}')")
        # cursor.execute(
        #     f"INSERT INTO Playlist (id,creator,name) VALUES ('{id[::-1]}','treble#id#123456789123','DailySuggestion')")
        # cursor.execute(f'''
        #    insert into TrackBelongsToPlaylist (track,playlist,addedDate) values 
        #     ('35sVDinWrh5nYjpzPXe4qz','{id[::-1]}',NOW()),
        #     ('1sDCjkSLqUvmNuiLPJM4fj','{id[::-1]}',NOW()),
        # ''')
        mysql.connection.commit()
        return jsonify(id=id)

@auth_bp.route('/login/', methods=['POST'])
def login():
    content = request.json
    email = content['email'].replace("'", " ")
    password = content['password']

    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute(
        f"SELECT id,username FROM User WHERE email = '{email}' and password = '{password}'")
    row = cursor.fetchone()
    if row:
        return jsonify(id=row['id'], username=row['username'])
    else:
        return jsonify(error="Incorrect email or password")
