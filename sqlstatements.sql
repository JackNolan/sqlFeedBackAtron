-- insert into an issue
-- INSERT INTO table_name (column1, column2, column3,...)
-- VALUES (value1, value2, value3,...)
INSERT INTO issues (author_id, status_id, created_at, content)
VALUES (1, 1, datetime('now'), "I have a problem")

-- new status is the default status- 
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution") strftime('%M', 'now')

-- self solve - self insert solution
UPDATE issues (status_id, accepted)
VALUES (4, 1)

		-- automatic
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution")

-- open status-
UPDATE issues (status_id)
VALUES (2) WHERE created_at
BETWEEN (created_at, '+15 minutes') < CURRENT_TIMESTAMP
AND (created_at, '+45 minutes') > CURRENT_TIMESTAMP;

-- user submit - 
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 0, "this is your solution");

-- author accept -
UPDATE issues (status_id, accepted)
VALUES (5, 1);

		-- automatic
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution");

-- instructor needed - 
UPDATE issues (status_id)
VALUES (3) WHERE created_at
BETWEEN (created_at, '+15 minutes') < CURRENT_TIMESTAMP
AND (created_at, '+45 minutes') > CURRENT_TIMESTAMP;

-- instructor solved-
UPDATE issues (status_id)
VALUES (6);

	-- automatic
INSERT INTO solutions (author_id, issue_id, accepted, content)
VALUES (1, 1, 1, "this is your solution");

-- See all issues by status:
SELECT status FROM issues GROUP BY status_id;

-- count by status
SELECT status, COUNT(status) AS number of issues FROM issues
GROUP BY status_id;