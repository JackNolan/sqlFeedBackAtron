INSERT INTO users (id, name, type)
	VALUES (1, "Adam", 1), 
		   (2, "Jack", 1),
		   (3, "Avi", 2);


INSERT INTO user_types (id, name)
	VALUES (1, "Student"),
	       (2, "Instructor");

INSERT INTO statuses (id, name)
	VALUES (1, "New"), 
		   (2, "Open"), 
		   (3, "Instructor Needed"), 
		   (4, "Self Solved"), 
		   (5, "User Solved"), 
		   (6, "Instructor Solved");


INSERT INTO issues (id, author_id, status_id, created_at, content)
	VALUES (1, 1, 1, 2012-10-10 15:05:22, "How do you get the timestamp with SQL?");

INSERT INTO solutions (id, author_id, issue_id, accepted, content)
	VALUES (1, 2, 1, 0, "use timestamp")
		   (1, 3, 1, 1, "use DateTime")		