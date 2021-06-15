
CREATE TABLE Room
(roomID INTEGER,
RoomType VARCHAR(12),
CampusID VARCHAR(2))

CREATE TABLE Campus
(CampusID VARCHAR(2),
CampusName VARCHAR(24))

INSERT INTO Campus VALUES ('D', 'Davis Campus')
INSERT INTO Campus VALUES ('H', 'HMC ')
INSERT INTO Campus VALUES ('T', 'Trafalgar Campus')

INSERT INTO Room VALUES (1, 'Class','D')
INSERT INTO Room VALUES (2, 'Lab','T')
INSERT INTO Room VALUES (3, 'Class','T')
INSERT INTO Room VALUES (4, 'Lab','D')
INSERT INTO Room VALUES (5, 'Class','D')
INSERT INTO Room VALUES (6, 'Admin','D')
INSERT INTO Room VALUES (7, 'Admin','T')
INSERT INTO Room VALUES (8, 'Class','T')
INSERT INTO Room VALUES (9, 'Lab','NA')
INSERT INTO Room VALUES (10, 'Class',NULL)


