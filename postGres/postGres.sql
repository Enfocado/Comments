-- DROP DATABASE IF EXISTS test;
-- CREATE DATABASE test;

\c comments;

CREATE TABLE projects (
  ID SERIAL PRIMARY KEY,
  projectName VARCHAR,
  projectID INTEGER
);

CREATE TABLE comments (
  ID SERIAL PRIMARY KEY,
  avatar VARCHAR,
  username VARCHAR,
  backer VARCHAR,
  comment VARCHAR,
  date_prod DATE,
  projects_id INTEGER
);

\COPY projects (projectName, projectID) FROM '/data/project1.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project2.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project3.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project4.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project5.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project6.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project7.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project8.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project9.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY projects (projectName, projectID) FROM '/data/project10.csv' WITH DELIMITER AS ',' CSV HEADER;

\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments1.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments2.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments3.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments4.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments5.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments6.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments7.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments8.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments9.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments10.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments11.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments12.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments13.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments14.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments15.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments16.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments17.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments18.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments19.csv' WITH DELIMITER AS ',' CSV HEADER;
\COPY comments (avatar, username, backer, comment, date_prod, projects_id) FROM '/data/comments20.csv' WITH DELIMITER AS ',' CSV HEADER;

ALTER TABLE comments ADD CONSTRAINT constraint_fk FOREIGN KEY (projects_id) REFERENCES projects (ID) ON DELETE CASCADE ON UPDATE CASCADE;
CREATE INDEX comments_index ON comments (projects_id);
