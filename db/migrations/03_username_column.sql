ALTER TABLE posts ADD COLUMN username VARCHAR(50) NOT NULL REFERENCES users(username);