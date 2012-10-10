INSERT INTO users (name, user_type)
	VALUES ("Adam", 1), 
		   ("Jack", 1),
		   ("Avi", 2);


INSERT INTO user_types (name)
	VALUES ("Student"),
	       ("Instructor");

INSERT INTO statuses (name)
	VALUES ("New"), 
		   ("Open"), 
		   ("Instructor Needed"), 
		   ("Self Solved"), 
		   ("User Solved"), 
		   ("Instructor Solved");


INSERT INTO issues (author_id, status_id, created_at, content)
	VALUES (1, 1, datetime('now'), "How do you get the timestamp with SQL?");

INSERT INTO solutions (author_id, issue_id, accepted, content)
	VALUES (2, 1, 0, "use timestamp"),
		   (3, 1, 1, "use DateTime");	
