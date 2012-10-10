CREATE TABLE users 
{
	id INTEGER PRIMARY KEY,
	user_type INTEGER NOT NULL,
	name VARCHAR(255)
};

CREATE TABLE user_types 
{
	id INTEGER PRIMARY KEY,
	name VARCHAR(255)
};

CREATE TABLE issues 
{
	id INTEGER PRIMARY KEY,
	author_id INTEGER NOT NULL,
	status_id INTEGER NOT NULL,
	created_at INTEGER NOT NULL,
	content VARCHAR(255)
};

CREATE TABLE statuses 
{
	id INTEGER PRIMARY KEY,
	name VARCHAR(255)
};


CREATE TABLE solutions 
{
	id INTEGER PRIMARY KEY,
	author_id INTEGER NOT NULL,
	issue_id INTEGER NOT NULL,
	accepted BOOLEAN,
	content VARCHAR(255)
};

