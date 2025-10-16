CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	email text UNIQUE NOT NULL,
	password text NOT NULL
);

CREATE TABLE tasks (
	id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(id) NOT NULL,
	description TEXT NOT NULL,
	content TEXT,
	starting_date DATE NOT NULL
);

CREATE TABLE daily_tasks(
	task_id INT REFERENCES tasks(id) PRIMARY KEY,
	user_id INT REFERENCES users(id)
);