-- user 1
INSERT INTO User(id,username,email,password,dob) VALUES('QKedDkxLZFOPQS8pAhkj01','Chirag','chirag@gmail.com','f4aa0655cdb8d4fcf6f719c7a786de10556783c70bfb8ef1d78923482fe6ebbc','2003-11-06');

INSERT INTO Playlist (id,creator,name)
VALUES ('qkEDdKXlzfopqs8PaHKJ01','treble#id#123456789123','DailyMix');

-- user 2
INSERT INTO User(id,username,email,password,dob) VALUES('fDvg6G63EGWEDstKuQ3u02','Daiwik','daiwik@gmail.com','0a92efb1b91ac02c858ab205fbb6baf44d67e8d1e625600a11020cfae50065da','2004-01-25');

INSERT INTO Playlist (id,creator,name)
VALUES ('FdVG6g63egwedSTkUq3U02','treble#id#123456789123','DailyMix');

-- user 3
INSERT INTO User(id,username,email,password,dob) VALUES('9fPfGMn2IJJZG1Sy0J1t03','Babu','babu@gmail.com','c7b9bdd40758eaa827b7abc1fc31408901ac99cef4f3891c1fb3598f531bb9e6','2005-11-11');

INSERT INTO Playlist (id,creator,name)
VALUES ('9FpFgmN2ijjzg1sY0j1T03','treble#id#123456789123','DailyMix');

-- user 4
INSERT INTO User(id,username,email,password,dob) VALUES('wz9xHeLMgQpjo7Nhwidp04','laddu','laddu@gmail.com','cedee8097b415089c67aff92192cd32ef2ffb7ea86fcbc0900ec071362c07994','1997-05-22');

INSERT INTO Playlist (id,creator,name)
VALUES ('WZ9XhElmGqPJO7nHWIDP04','treble#id#123456789123','DailyMix');

-- user 5
INSERT INTO User(id,username,email,password,dob) VALUES('RBtBUZTItc3plsuGbxGJ05','muthaya','muthaya@gmail.com','cccf52f3d03c5072ee64a136f74fc56b27e04f15ffe5d1d277d58ab18d94b327','2001-02-28');

INSERT INTO Playlist (id,creator,name)
VALUES ('rbTbuztiTC3PLSUgBXgj05','treble#id#123456789123','DailyMix');

INSERT INTO Playlist (id,creator,name) VALUES('PrsS4E1r054PsZUyl4MTix','QKedDkxLZFOPQS8pAhkj01','rock0');
INSERT INTO Playlist (id,creator,name) VALUES('GB7mqCD8Qjw2gHRg1854Qm','QKedDkxLZFOPQS8pAhkj01','rock1');
INSERT INTO Playlist (id,creator,name) VALUES('WSVaeQF40xY6qEhhSCsbfA','fDvg6G63EGWEDstKuQ3u02','rap0');
INSERT INTO Playlist (id,creator,name) VALUES('7Tu7fhjaFbJabiZTj6i30x','fDvg6G63EGWEDstKuQ3u02','rap1');
INSERT INTO Playlist (id,creator,name) VALUES('mOd5giEfK8mWOCgB2QTM8s','9fPfGMn2IJJZG1Sy0J1t03','country0');
INSERT INTO Playlist (id,creator,name) VALUES('JbgJWXvmkciLFI3mQpGYjL','9fPfGMn2IJJZG1Sy0J1t03','country1');
INSERT INTO Playlist (id,creator,name) VALUES('R1kn0yocXXUlgLKG79yWH7','wz9xHeLMgQpjo7Nhwidp04','pop0');
INSERT INTO Playlist (id,creator,name) VALUES('8rNOd494DEYPasXarQUx5t','wz9xHeLMgQpjo7Nhwidp04','pop1');
INSERT INTO Playlist (id,creator,name) VALUES('AGo63tostpFODB023uapny','RBtBUZTItc3plsuGbxGJ05','hip hop0');
INSERT INTO Playlist (id,creator,name) VALUES('fY1hQJ08pO7QHlPcB3uIvG','RBtBUZTItc3plsuGbxGJ05','hip hop1');

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('35sVDinWrh5nYjpzPXe4qz','PrsS4E1r054PsZUyl4MTix',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('1sDCjkSLqUvmNuiLPJM4fj','PrsS4E1r054PsZUyl4MTix',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('4PpHj4Th2vK4JH25eGdgxc','GB7mqCD8Qjw2gHRg1854Qm',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('3pFZMAJu3uku6bs9OZkM8Z','GB7mqCD8Qjw2gHRg1854Qm',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('0rbCIePwNYXpvD451ihkVO','WSVaeQF40xY6qEhhSCsbfA',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('2s4fnSh4FZjj0oZxruiqtc','WSVaeQF40xY6qEhhSCsbfA',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('4dx1Mf0Cl6luHghe58xKAV','7Tu7fhjaFbJabiZTj6i30x',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('3JLp0nKPNJKfeFWJMJYj1g','7Tu7fhjaFbJabiZTj6i30x',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('4OSBTYWVwsQhGLF9NHvIbR','mOd5giEfK8mWOCgB2QTM8s',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('5mFMb5OHI3cN0UjITVztCj','mOd5giEfK8mWOCgB2QTM8s',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('2eF2x1BkgilhaZ2AipRY8j','JbgJWXvmkciLFI3mQpGYjL',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('1CRtJS94Hq3PbBZT9LuF90','JbgJWXvmkciLFI3mQpGYjL',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('3di5hcvxxciiqwMH1jarhY','R1kn0yocXXUlgLKG79yWH7',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('2hw47GMKL6LXwp5BJgPxXf','R1kn0yocXXUlgLKG79yWH7',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('43Bcg5ckW8WchRzyPZA0u1','8rNOd494DEYPasXarQUx5t',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('42Uw9frN5ZVX40mRU3hHFL','8rNOd494DEYPasXarQUx5t',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('5W63Zcirj6bvnTxhVIKTSK','AGo63tostpFODB023uapny',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('2PPN1HFpVotjq7oJIqQbnx','AGo63tostpFODB023uapny',NOW());

INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('2PPN1HFpVotjq7oJIqQbnx','fY1hQJ08pO7QHlPcB3uIvG',NOW());
INSERT INTO TrackBelongsToPlaylist(track,playlist,addedDate) VALUES('3bNv3VuUOKgrf5hu3YcuRo','fY1hQJ08pO7QHlPcB3uIvG',NOW());

#-----followers names 
SELECT Follower.id,Follower.username
FROM ((User AS MainUser JOIN FollowUser ON MainUser.id=FollowUser.followed) JOIN User AS Follower ON Follower.id=FollowUser.follower)
WHERE MainUser.id='QKedDkxLZFOPQS8pAhkj01';

