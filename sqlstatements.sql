-- insert into an issue
-- INSERT INTO table_name (column1, column2, column3,...)
-- VALUES (value1, value2, value3,...)
INSERT INTO issues (author_id, status_id, created_at, content)
VALUES (1, 1, datetime('now'), "I have a problem")

-- new status is the default status- 
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution") strftime('%M', 'now')

-- self solve - self insert solution
UPDATE issues
SET status_id = 4
WHERE id = 1

		-- automatic
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution")

-- open status-

UPDATE issues
SET status_id=2
WHERE strftime('%s', 'now') - strftime('%s', issues.created_at)
BETWEEN
900 AND 2700;

-- UPDATE issues
-- SET status_id = 2
-- WHERE created_at
-- BETWEEN (created_at, '+15 minutes') < CURRENT_TIMESTAMP
-- AND (created_at, '+45 minutes') > CURRENT_TIMESTAMP;

-- user submit - 

INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (3, 1, 1, "use DateTime");

-- author accept -
UPDATE solutions
SET accepted = 1
WHERE solutions.issue_id=1;

UPDATE issues
SET status_id=5
WHERE id= 1;

-- transaction to make sure that the two queries are treated automically 
-- http://stackoverflow.com/questions/2044467/how-to-update-two-tables-in-one-statement-in-sql-server-2005


-- instructor needed - 

UPDATE issues
SET status_id=3
WHERE strftime('%s', 'now') - strftime('%s', issues.created_at) >= 2700;

-- UPDATE issues (status_id)
-- VALUES (3) WHERE created_at
-- BETWEEN (created_at, '+15 minutes') < CURRENT_TIMESTAMP
-- AND (created_at, '+45 minutes') > CURRENT_TIMESTAMP;

-- instructor solved-
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (2, 1, 0, "use timestamp");

UPDATE issues
SET status_id=6 
WHERE id=1;

	-- automatic
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution");

-- See all issues by status:
SELECT status FROM issues GROUP BY status_id;

-- count by status
SELECT status, COUNT(status) AS number of issues FROM issues
GROUP BY status_id;