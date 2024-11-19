-- user 1 likes
INSERT INTO LikesTrack(user,track,date) VALUES('QKedDkxLZFOPQS8pAhkj01','35sVDinWrh5nYjpzPXe4qz','2022-01-25');
INSERT INTO LikesTrack(user,track,date) VALUES('QKedDkxLZFOPQS8pAhkj01','1sDCjkSLqUvmNuiLPJM4fj','2022-01-23');

-- user 2 likes 
INSERT INTO LikesTrack(user,track,date) VALUES('fDvg6G63EGWEDstKuQ3u02','0rbCIePwNYXpvD451ihkVO','2022-01-23');
INSERT INTO LikesTrack(user,track,date) VALUES('fDvg6G63EGWEDstKuQ3u02','2s4fnSh4FZjj0oZxruiqtc','2022-01-23');

-- user 3 likes
INSERT INTO LikesTrack(user,track,date) VALUES('9fPfGMn2IJJZG1Sy0J1t03','4dx1Mf0Cl6luHghe58xKAV','2022-01-24');
INSERT INTO LikesTrack(user,track,date) VALUES('9fPfGMn2IJJZG1Sy0J1t03','3JLp0nKPNJKfeFWJMJYj1g','2022-01-24');

-- user 4 likes
INSERT INTO LikesTrack(user,track,date) VALUES('wz9xHeLMgQpjo7Nhwidp04','5ypZJOJbxjaPdZXB8W7Txe','2022-01-25');
INSERT INTO LikesTrack(user,track,date) VALUES('wz9xHeLMgQpjo7Nhwidp04','5KJL8bycuiAHPGcNsJd4g3','2022-01-22');

-- user 5 likes
INSERT INTO LikesTrack(user,track,date) VALUES('RBtBUZTItc3plsuGbxGJ05','1Z4a0qV0gSJXie2252YBpm','2022-01-12');
INSERT INTO LikesTrack(user,track,date) VALUES('RBtBUZTItc3plsuGbxGJ05','1Zm86n2tQ7o5gKgdhqAHjY','2022-01-22');
select * from likesTrack;

DELIMITER $$

CREATE PROCEDURE AddLike(
    IN userId VARCHAR(255), 
    IN trackId VARCHAR(255), 
    IN likeDate DATE
)
BEGIN
    INSERT INTO likestrack (uer, track, date)
    VALUES (userId, trackId, likeDate);
END $$

DELIMITER ;
select * from likestrack;
CALL AddLike('QKedDkxLZFOPQS8pAhkj01', '3di5hcvxxciiqwMH1jarhY', '2024-11-18');
select * from likestrack where user='QKedDkxLZFOPQS8pAhkj01';
select * from likestrack;


DELIMITER $$

CREATE FUNCTION GetTrackCountByUser(userId VARCHAR(255))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE trackCount INT;
    SELECT COUNT(DISTINCT track) INTO trackCount
    FROM likestrack
    WHERE uer = userId;
    RETURN trackCount;
END $$

DELIMITER ;
SELECT GetTrackCountByUser('fDvg6G63EGWEDstKuQ3u02');




DELIMITER $$

CREATE PROCEDURE GetLikesByDate(
    IN likeDate DATE
)
BEGIN
    SELECT uer AS User, track AS Track
    FROM likestrack
    WHERE date = likeDate;
END $$

DELIMITER ;
CALL GetLikesByDate('2024-11-18');

