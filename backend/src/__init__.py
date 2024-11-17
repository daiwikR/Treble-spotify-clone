from flask import Flask
from flask_cors import CORS
from flask_mysqldb import MySQL

app = Flask(__name__)
CORS(app)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Chirag@06'
app.config['MYSQL_DB'] = 'treble'

# app.config['MYSQL_USER_2'] = 'root'
# app.config['MYSQL_PASSWORD_2'] = 'Daiwik@2004'

mysql = MySQL(app)
