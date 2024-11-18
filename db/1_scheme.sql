-- creating and using the database
-- drop database treble;

create database treble;
use treble;

-- creating all the tables needed
create table Album(
    id char(22) primary key, 
    title varchar(400) not null, 
    numberOfTracks int default 0, 
    image varchar(1000) default '/', 
    duration int not null, 
	releaseDate date not null
);

create table Artist(
    id char(22) primary key, 
    name varchar(30) not null unique, 
    isVerified int not null, 
    followers int default 0, 
    isBand int not null,
    image varchar(200) default '/'
);

create table Making(
    artist char(22),
    album char(22),

    primary key (artist, album),
    foreign key (artist) references Artist(id) on delete cascade,
    foreign key (album) references Album(id) on delete cascade
);

create table Track(
    id char(22) primary key,
    title varchar(80) not null,
    duration int not null, 
    isExplicit int not null,
    plays int default 0
);

create table TrackBelongsToAlbum(
    album char(22), 
    track char(22), 
    position int not null,

    primary key(album, track),
    foreign key (album) references Album(id) on delete cascade,
    foreign key (track) references Track(id) on delete cascade
);

create table Features(
    artist char(22),
    track char(22),

    primary key(artist, track),
    foreign key (artist) references Artist(id) on delete cascade,
    foreign key (track) references Track(id) on delete cascade
);

create table User(
    id char(22) primary key,
    track char(22) default null,
    image varchar(100) default '/', 
    username varchar(30) not null unique,
    email varchar(40) not null unique, 
    password varchar(64) not null, 
    dob date, 
    
    foreign key (track) references Track(id) on delete set null
);

create table FollowUser(
    follower char(22),
    followed char(22),

    primary key(follower, followed),
    foreign key (follower) references User(id) on delete cascade,
    foreign key (followed) references User(id) on delete cascade
);

create table ListenedTo(
    user char(22),
    track char(22),
    date date not null,

    primary key(user, track, date),
    foreign key (track) references Track(id) on delete cascade,
    foreign key (user) references User(id) on delete cascade
);

create table LikesTrack(
    user char(22),
    track char(22), 
    date date not null,

    primary key(user, track),
    foreign key (user) references User(id) on delete cascade,
    foreign key (track) references Track(id) on delete cascade
);

create table FollowArtist(
    user char(22),
    artist char(22),

    primary key(user, artist),
    foreign key (user) references User(id) on delete cascade,
    foreign key (artist) references Artist(id) on delete cascade
);

create table Category(
    name varchar(30) primary key
);

create table TrackBelongsToCategory(
    category varchar(30), 
    track char(22),

    primary key(category, track),
    foreign key (category) references Category(name) on delete cascade,
    foreign key (track) references Track(id) on delete cascade
);

create table Playlist(
    id char(22) primary key, 
    creator varchar(30) not null,
    name varchar(30) not null, 
    foreign key (creator) references User(id) on delete cascade
);

create table TrackBelongsToPlaylist(
    track char(22), 
    playlist char(22), 
    addedDate date not null,

    primary key(track, playlist),
    foreign key (track) references Track(id) on delete cascade,
    foreign key (playlist) references Playlist(id) on delete cascade
);

create table LikesPlaylist(
    playlist char(22),
    user char(22),
	date date not null,
    
    primary key(playlist, user),
    foreign key (playlist) references Playlist(id) on delete cascade,
    foreign key (user) references User(id) on delete cascade
);

create table LikesAlbum(
    album char(22),
    user char(22),
	date date not null,
    
    primary key(album, user),
    foreign key (album) references Album(id) on delete cascade,
    foreign key (user) references User(id) on delete cascade
);

-- show tables;

-- trigger to update the number of followers of an artist
CREATE TRIGGER followerArtist
AFTER INSERT ON FollowArtist
FOR EACH ROW
UPDATE Artist SET Artist.followers = 1 + Artist.followers WHERE Artist.id = new.artist;

-- trigger to get number of listeners for a track
CREATE TRIGGER trackPlays
AFTER INSERT ON ListenedTo
FOR EACH ROW
UPDATE Track SET Track.plays = 1 + Track.plays WHERE Track.id = new.track;
select * from user;