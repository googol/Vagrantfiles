-- This sql script creates a user and two databases in postgres with matching permissions as in Heroku
CREATE ROLE vagrant;
ALTER ROLE vagrant WITH LOGIN PASSWORD 'vagrant' NOSUPERUSER NOCREATEDB NOCREATEROLE;

CREATE DATABASE vagrant OWNER vagrant;
REVOKE ALL ON DATABASE vagrant FROM PUBLIC;
GRANT CONNECT ON DATABASE vagrant TO vagrant;
GRANT ALL ON DATABASE vagrant TO vagrant;

CREATE DATABASE test OWNER vagrant;
REVOKE ALL ON DATABASE test FROM PUBLIC;
GRANT CONNECT ON DATABASE test TO vagrant;
GRANT ALL ON DATABASE test TO vagrant;