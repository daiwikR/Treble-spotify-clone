-- future album
INSERT INTO Album (id,title,numberOfTracks,image,duration,releaseDate)
VALUES ('6rlmahX20G4EGu7ClCHe4p','Honest',12,'https://upload.wikimedia.org/wikipedia/en/2/21/Future_Honest_%28album%29.jpg',4204048,'2014-04-22');

INSERT INTO Making (artist,album) VALUES
('1RyvyyTE3xzB2ZywiAwp0i','6rlmahX20G4EGu7ClCHe4p');

INSERT INTO Track (id,title,duration,isExplicit) VALUES
('35sVDinWrh5nYjpzPXe4qz','You re Gonna Be Ok',261519,0),
('1sDCjkSLqUvmNuiLPJM4fj','You Came (Lazarus)',361200,0),
('0rbCIePwNYXpvD451ihkVO','Rescue',316666,0),
('2s4fnSh4FZjj0oZxruiqtc','Graves into Gardens',453706,0),
('4dx1Mf0Cl6luHghe58xKAV','The Light in You',263293,0),
('3JLp0nKPNJKfeFWJMJYj1g','Battle Belongs',372546,0),
('5ypZJOJbxjaPdZXB8W7Txe','Build My Life',318306,0),
('5KJL8bycuiAHPGcNsJd4g3','Another in the Fire',346733,0),
('1Z4a0qV0gSJXie2252YBpm','Way Maker',360600,0),
('1Zm86n2tQ7o5gKgdhqAHjY','Living Hope',380453,0),
('4PpHj4Th2vK4JH25eGdgxc','It Is Well',385880,0),
('3pFZMAJu3uku6bs9OZkM8Z','Arrows (I Will Be With You)',383146,0);

INSERT INTO TrackBelongsToAlbum (album,track,position) VALUES
('6rlmahX20G4EGu7ClCHe4p','35sVDinWrh5nYjpzPXe4qz',0),
('6rlmahX20G4EGu7ClCHe4p','1sDCjkSLqUvmNuiLPJM4fj',1),
('6rlmahX20G4EGu7ClCHe4p','0rbCIePwNYXpvD451ihkVO',2),
('6rlmahX20G4EGu7ClCHe4p','2s4fnSh4FZjj0oZxruiqtc',3),
('6rlmahX20G4EGu7ClCHe4p','4dx1Mf0Cl6luHghe58xKAV',4),
('6rlmahX20G4EGu7ClCHe4p','3JLp0nKPNJKfeFWJMJYj1g',5),
('6rlmahX20G4EGu7ClCHe4p','5ypZJOJbxjaPdZXB8W7Txe',6),
('6rlmahX20G4EGu7ClCHe4p','5KJL8bycuiAHPGcNsJd4g3',7),
('6rlmahX20G4EGu7ClCHe4p','1Z4a0qV0gSJXie2252YBpm',8),
('6rlmahX20G4EGu7ClCHe4p','1Zm86n2tQ7o5gKgdhqAHjY',9),
('6rlmahX20G4EGu7ClCHe4p','4PpHj4Th2vK4JH25eGdgxc',10),
('6rlmahX20G4EGu7ClCHe4p','3pFZMAJu3uku6bs9OZkM8Z',11);

INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','35sVDinWrh5nYjpzPXe4qz');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop rock','1sDCjkSLqUvmNuiLPJM4fj');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','0rbCIePwNYXpvD451ihkVO');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','2s4fnSh4FZjj0oZxruiqtc');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop rock','4dx1Mf0Cl6luHghe58xKAV');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop rock','3JLp0nKPNJKfeFWJMJYj1g');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','5ypZJOJbxjaPdZXB8W7Txe');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','5KJL8bycuiAHPGcNsJd4g3');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop rock','1Z4a0qV0gSJXie2252YBpm');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','1Zm86n2tQ7o5gKgdhqAHjY');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop rock','4PpHj4Th2vK4JH25eGdgxc');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop rock','3pFZMAJu3uku6bs9OZkM8Z');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','3pFZMAJu3uku6bs9OZkM8Z');

INSERT INTO Features (artist,track) VALUES ('7tYKF4w9nC0nq9CsPZTHyP','35sVDinWrh5nYjpzPXe4qz');
INSERT INTO Features (artist,track) VALUES ('7tYKF4w9nC0nq9CsPZTHyP','1sDCjkSLqUvmNuiLPJM4fj');
INSERT INTO Features (artist,track) VALUES ('181bsRPaVXVlUKXrxwZfHK','1sDCjkSLqUvmNuiLPJM4fj');
INSERT INTO Features (artist,track) VALUES ('181bsRPaVXVlUKXrxwZfHK','0rbCIePwNYXpvD451ihkVO');
INSERT INTO Features (artist,track) VALUES ('181bsRPaVXVlUKXrxwZfHK','2s4fnSh4FZjj0oZxruiqtc');
INSERT INTO Features (artist,track) VALUES ('4kYSro6naA4h99UJvo89HB','4dx1Mf0Cl6luHghe58xKAV');
INSERT INTO Features (artist,track) VALUES ('4kYSro6naA4h99UJvo89HB','3JLp0nKPNJKfeFWJMJYj1g');
INSERT INTO Features (artist,track) VALUES ('7tYKF4w9nC0nq9CsPZTHyP','3JLp0nKPNJKfeFWJMJYj1g');
INSERT INTO Features (artist,track) VALUES ('4kYSro6naA4h99UJvo89HB','5ypZJOJbxjaPdZXB8W7Txe');
INSERT INTO Features (artist,track) VALUES ('4bYPcJP5jwMhSivRcqie2n','5KJL8bycuiAHPGcNsJd4g3');
INSERT INTO Features (artist,track) VALUES ('4bYPcJP5jwMhSivRcqie2n','1Z4a0qV0gSJXie2252YBpm');
INSERT INTO Features (artist,track) VALUES ('4bYPcJP5jwMhSivRcqie2n','1Zm86n2tQ7o5gKgdhqAHjY');
INSERT INTO Features (artist,track) VALUES ('4MCBfE4596Uoi2O4DtmEMz','4PpHj4Th2vK4JH25eGdgxc');
INSERT INTO Features (artist,track) VALUES ('4MCBfE4596Uoi2O4DtmEMz','3pFZMAJu3uku6bs9OZkM8Z');

-- adele album
INSERT INTO Album (id,title,numberOfTracks,image,duration,releaseDate)
VALUES ('2DAh6Er0J8AxZDu6W1pjAW','21',11,'https://upload.wikimedia.org/wikipedia/en/7/7a/Adele_-_Someone_Like_You.png,2884922',200000,'2011-02-22');

INSERT INTO Making (artist,album) VALUES
('4dpARuHxo51G3z768sgnrY','2DAh6Er0J8AxZDu6W1pjAW');

INSERT INTO Track (id,title,duration,isExplicit) VALUES
('4OSBTYWVwsQhGLF9NHvIbR','Rolling in the Deep',228093,1),
('5mFMb5OHI3cN0UjITVztCj','Rumour Has It',223266,0),
('2eF2x1BkgilhaZ2AipRY8j','Turning Tables',250000,0),
('1CRtJS94Hq3PbBZT9LuF90','Don t You Remember',243200,0),
('3di5hcvxxciiqwMH1jarhY','Set Fire to the Rain',242973,0),
('2hw47GMKL6LXwp5BJgPxXf','He Won t Go',278040,0),
('43Bcg5ckW8WchRzyPZA0u1','Take It All',228293,0),
('42Uw9frN5ZVX40mRU3hHFL','I ll Be Waiting',241351,0),
('5W63Zcirj6bvnTxhVIKTSK','One And Only',348226,0),
('2PPN1HFpVotjq7oJIqQbnx','Lovesong',316240,0),
('3bNv3VuUOKgrf5hu3YcuRo','Someone Like You',285240,0);

INSERT INTO TrackBelongsToAlbum (album,track,position) VALUES
('2DAh6Er0J8AxZDu6W1pjAW','4OSBTYWVwsQhGLF9NHvIbR',0),
('2DAh6Er0J8AxZDu6W1pjAW','5mFMb5OHI3cN0UjITVztCj',1),
('2DAh6Er0J8AxZDu6W1pjAW','2eF2x1BkgilhaZ2AipRY8j',2),
('2DAh6Er0J8AxZDu6W1pjAW','1CRtJS94Hq3PbBZT9LuF90',3),
('2DAh6Er0J8AxZDu6W1pjAW','3di5hcvxxciiqwMH1jarhY',4),
('2DAh6Er0J8AxZDu6W1pjAW','2hw47GMKL6LXwp5BJgPxXf',5),
('2DAh6Er0J8AxZDu6W1pjAW','43Bcg5ckW8WchRzyPZA0u1',6),
('2DAh6Er0J8AxZDu6W1pjAW','42Uw9frN5ZVX40mRU3hHFL',7),
('2DAh6Er0J8AxZDu6W1pjAW','5W63Zcirj6bvnTxhVIKTSK',8),
('2DAh6Er0J8AxZDu6W1pjAW','2PPN1HFpVotjq7oJIqQbnx',9),
('2DAh6Er0J8AxZDu6W1pjAW','3bNv3VuUOKgrf5hu3YcuRo',10);

INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','4OSBTYWVwsQhGLF9NHvIbR');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','4OSBTYWVwsQhGLF9NHvIbR');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','4OSBTYWVwsQhGLF9NHvIbR');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','4OSBTYWVwsQhGLF9NHvIbR');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','5mFMb5OHI3cN0UjITVztCj');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','5mFMb5OHI3cN0UjITVztCj');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','5mFMb5OHI3cN0UjITVztCj');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','5mFMb5OHI3cN0UjITVztCj');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','2eF2x1BkgilhaZ2AipRY8j');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','2eF2x1BkgilhaZ2AipRY8j');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','2eF2x1BkgilhaZ2AipRY8j');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','2eF2x1BkgilhaZ2AipRY8j');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','1CRtJS94Hq3PbBZT9LuF90');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','1CRtJS94Hq3PbBZT9LuF90');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','1CRtJS94Hq3PbBZT9LuF90');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','1CRtJS94Hq3PbBZT9LuF90');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','3di5hcvxxciiqwMH1jarhY');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','3di5hcvxxciiqwMH1jarhY');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','3di5hcvxxciiqwMH1jarhY');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','3di5hcvxxciiqwMH1jarhY');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','2hw47GMKL6LXwp5BJgPxXf');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','2hw47GMKL6LXwp5BJgPxXf');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','2hw47GMKL6LXwp5BJgPxXf');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','2hw47GMKL6LXwp5BJgPxXf');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','43Bcg5ckW8WchRzyPZA0u1');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','43Bcg5ckW8WchRzyPZA0u1');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','43Bcg5ckW8WchRzyPZA0u1');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','43Bcg5ckW8WchRzyPZA0u1');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','42Uw9frN5ZVX40mRU3hHFL');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','42Uw9frN5ZVX40mRU3hHFL');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','42Uw9frN5ZVX40mRU3hHFL');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','42Uw9frN5ZVX40mRU3hHFL');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','5W63Zcirj6bvnTxhVIKTSK');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','5W63Zcirj6bvnTxhVIKTSK');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','5W63Zcirj6bvnTxhVIKTSK');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','5W63Zcirj6bvnTxhVIKTSK');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','2PPN1HFpVotjq7oJIqQbnx');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','2PPN1HFpVotjq7oJIqQbnx');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','2PPN1HFpVotjq7oJIqQbnx');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','2PPN1HFpVotjq7oJIqQbnx');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('british soul','3bNv3VuUOKgrf5hu3YcuRo');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop','3bNv3VuUOKgrf5hu3YcuRo');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('pop soul','3bNv3VuUOKgrf5hu3YcuRo');
INSERT INTO TrackBelongsToCategory(category,track) VALUES ('uk pop','3bNv3VuUOKgrf5hu3YcuRo');
