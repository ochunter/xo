DROP DATABASE IF EXISTS :NAME;

DROP USER IF EXISTS :NAME;

CREATE USER :NAME WITH PASSWORD :'PASS';

CREATE DATABASE :NAME OWNER :NAME;