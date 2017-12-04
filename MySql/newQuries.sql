

CREATE SCHEMA devJobs;

USE devJobs;

SELECT * FROM sitePositions;

ALTER TABLE users MODIFY userPassword VARCHAR(100);

RENAME TABLE users TO systemUsers;

RENAME TABLE positions TO sitePositions;

RENAME TABLE skills TO computerSkills;

SELECT DISTINCT * FROM (SELECT pos.*, pts.skillId FROM sitePositions pos JOIN positionsToSkills pts ON pos.positionId=pts.positionId AND pts.skillId IN (1,2,3,4,5,6,7,8,9,10,11) 
AND (pos.isRelevant=1 AND pos.companyName IN ("skyvu", "jaxnation" ))) AS res;


SELECT pos.*, pts.skillId FROM sitePositions pos JOIN positionsToSkills pts ON pos.positionId=pts.positionId AND pts.skillId IN (1,2,3,4,5,6,7,8,9,10,11) 
AND (pos.isRelevant=1 AND pos.companyName IN ("skyvu", "jaxnation" )) GROUP BY pos.positionId ORDER BY publishDate DESC LIMIT 100;

# Former search query
SELECT pos.*, s.skillName FROM sitePositions pos JOIN positionsToSkills pts 
ON pos.positionId=pts.positionId AND pts.skillId IN (1,2,3,4,5,6,7,8,9,10,11) 
AND (pos.isRelevant=1 AND pos.companyName IN ("skyvu", "jaxnation" )) 
JOIN computerSkills s where pts.skillId=s.skillId ORDER BY publishDate DESC LIMIT 1000;

# Former query for the search:
SELECT pos.*, s.skillName 
FROM sitePositions pos, computerSkills s, positionsToSkills pts
WHERE pos.isRelevant=1 AND pos.positionId=pts.positionId AND pts.skillId=s.skillId 
/*AND pos.companyName IN ("Jaxnation")*/
/*AND pts.skillId IN (1,2,3,4,5)*/
ORDER BY pos.positionId ASC;


SELECT * FROM positionsToSkills pts, sitePositions pos WHERE pts.skillId = 4 AND pos.isRelevant=1 AND pos.positionId=pts.positionId;


SELECT pts.positionId, s.skillName FROM positionsToSkills pts JOIN computerSkills s ON pts.skillId=s.skillId ORDER BY positionId ASC;

# Selected query for skills of relevant positions:
SELECT pos.positionId, s.skillName FROM positionsToSkills pts, computerSkills s, sitePositions pos WHERE pos.isRelevant=1 AND pts.skillId=s.skillId AND pos.positionID=pts.positionID 
ORDER BY pos.positionId ASC;


# Selected query for the search:
SELECT pos.*, s.skillName 
FROM sitePositions pos, computerSkills s, positionsToSkills pts
WHERE pos.isRelevant=1 AND pos.positionId=pts.positionId AND pts.skillId=s.skillId 
/*AND pos.companyName IN ("Trilith")
AND pos.positionId IN (SELECT pts.positionId FROM positionsToSkills pts WHERE pts.skillId IN("4"))*/
ORDER BY pos.positionId ASC;


SELECT * FROM systemUsers;


SELECT pts.positionId FROM positionsToSkills pts WHERE pts.skillId IN("4");  
