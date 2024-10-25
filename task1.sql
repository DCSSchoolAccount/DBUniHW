CREATE TABLE petPet (
    petname VARCHAR(100),
    owner VARCHAR(100),
    species VARCHAR(50),
    gender ENUM('M', 'F'),  -- Only M or F
    birth DATE,
    death DATE,
    PRIMARY KEY (petname)  -- petname as primary key
);

CREATE TABLE petEvent (
    eventid INT AUTO_INCREMENT,  -- Primary key for petEvent
    petname VARCHAR(100),
    eventdate DATE,
    eventtype VARCHAR(50),
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    PRIMARY KEY (eventid, eventdate)  -- Composite key including eventid
);