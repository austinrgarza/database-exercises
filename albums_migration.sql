USE codeup_test_db;

DROP TABLE if EXISTS albums;
CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_name VARCHAR(300) NOT NULL default 'NONE',
    record_name VARCHAR (300) NOT NULL ,
    release_date INT,
    genre VARCHAR(50),
    sales FLOAT NOT Null,
    PRIMARY KEY (id)
);