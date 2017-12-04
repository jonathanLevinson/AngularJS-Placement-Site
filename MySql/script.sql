CREATE DATABASE devJobs;

USE devJobs;

CREATE TABLE positions (
	positionId INT(10) AUTO_INCREMENT PRIMARY KEY,
    companyName VARCHAR(100) NOT NULL,
    caption VARCHAR(200) NOT NULL,
    description VARCHAR(500),
    lat FLOAT(10,2),
    lng FLOAT(10,2),
    city VARCHAR(50),
    country VARCHAR(50),
    address VARCHAR(100),
    isRelevant INT(1),
    publishDate datetime
);

SELECT * FROM positionsToSkills;

CREATE TABLE skills (
	skillId INT(10) AUTO_INCREMENT PRIMARY KEY,
	skillName VARCHAR(50) NOT NULL
);

CREATE TABLE positionsToSkills (
	rowNum INT(10) AUTO_INCREMENT PRIMARY KEY,
    positiondId INT(10),
    skillId INT(10)
);

ALTER TABLE positionsToSkills CHANGE COLUMN	positiondId positionId INT(10);

SELECT s.skillName FROM skills s JOIN positionsToSkills pts ON pts.positionId=3 AND s.skillId=pts.skillId;

SELECT * FROM positionsToSkills WHERE positionId=3;

SELECT p.* , s.skillName FROM positions p JOIN skills s 
	JOIN positionsToSkills pts ON pts.positionId=p.positionId 
    AND s.skillId=pts.skillId AND p.isRelevant=1 GROUP BY p.positionId;
    
SELECT pts.positionId, s.skillName 
FROM positionsToSkills pts JOIN skills s ON pts.skillId=s.skillId;

SELECT * FROM positionsToSkills; 