-- Grant privileges to the 'devicemagic' user on everything in the 'gnasher' database.
CREATE USER 'gnasher_user'@'%' IDENTIFIED BY 'ahMahShiezeik6ahzi9dieheiJaiseegu8';
GRANT SELECT, INSERT, UPDATE ON gnasher.* TO 'gnasher_user'@'%';

-- Reload all the privileges.
FLUSH PRIVILEGES;
