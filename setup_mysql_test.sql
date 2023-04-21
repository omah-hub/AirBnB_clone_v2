-- Create a database using a script
-- Create a new user in localhost
-- Set the password for the new user
-- The user should have all privileges on the database
-- The user should have SELECT privilege on the db performance_schema
-- If the user or database exists, the script shouldn't fail.

CREATE DATABASE IF NOT EXISTS hbnb_test_db;
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';
GRANT USAGE ON *.* TO 'hbnb_test'@'localhost';
GRANT ALL ON hbnb_test_db.* TO 'hbnb_test'@'localhost';
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
