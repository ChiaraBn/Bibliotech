
CREATE ROLE adminbiblio PASSWORD 'adminpassword' SUPERUSER LOGIN CREATEDB CREATEROLE;
CREATE DATABASE bibliotech WITH OWNER adminbiblio;
GRANT ALL PRIVILEGES ON DATABASE bibliotech TO adminbiblio;