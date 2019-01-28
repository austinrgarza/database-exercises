CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(50) NOT NULL default 'NONE',
    record_name VARCHAR (150) NOT NULL ,
    release_date DATE NOT NULL,
    sales FLOAT NOT Null,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);