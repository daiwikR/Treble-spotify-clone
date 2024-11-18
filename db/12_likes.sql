-- Insert liked tracks into the liked table
INSERT INTO likestrack (user, track, date)
SELECT 
    '9fPfGMn2IJJZG1Sy0J1t03' AS user_id, '1CRtJS94Hq3PbBZT9LuF90', CURRENT_DATE
UNION ALL
SELECT 
    '9fPfGMn2IJJZG1Sy0J1t03', '2eF2x1BkgilhaZ2AipRY8j', CURRENT_DATE
UNION ALL
SELECT 
    'fDvg6G63EGWEDstKuQ3u02', '2hw47GMKL6LXwp5BJgPxXf', CURRENT_DATE
UNION ALL
SELECT 
    'QKedDkxLZFOPQS8pAhkj01', '3di5hcvxxciiqwMH1jarhY', CURRENT_DATE
UNION ALL
SELECT 
    'RBtBUZTItc3plsuGbxGJ05', '3bNv3VuUOKgrf5hu3YcuRo', CURRENT_DATE
UNION ALL
SELECT 
    'si0k8789aagvp1y34kzwxl', '43Bcg5ckW8WchRzyPZA0u1', CURRENT_DATE
UNION ALL
SELECT 
    'treble#id#123456789123', '4dx1Mf0Cl6luHghe58xKAV', CURRENT_DATE
UNION ALL
SELECT 
    'wz9xHeLMgQpjo7Nhwidp04', '5W63Zcirj6bvnTxhVIKTSK', CURRENT_DATE;

use treble;
select * from likestrack;
-- which user likes which songs 
SELECT 
    u.username AS user_name,
    t.title AS liked_song
FROM 
    likestrack l
JOIN 
    user u ON l.user = u.id
JOIN 
    track t ON l.track = t.id;


SELECT 
    t.title AS song_name,
    COUNT(lt.track) AS like_count
FROM 
    likestrack lt
JOIN 
    track t ON lt.track = t.id
GROUP BY 
    t.title
ORDER BY 
    like_count DESC;
