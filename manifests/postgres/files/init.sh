#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL

    CREATE DATABASE "database_1";
    CREATE USER "user_1" WITH ENCRYPTED PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE "database_1" TO "user_1";

    CREATE DATABASE "database_2";
    CREATE USER "user_2" WITH ENCRYPTED PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE "database_2" TO "user_2";

    CREATE DATABASE "database_3";
    CREATE USER "user_3" WITH ENCRYPTED PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE "database_3" TO "user_3";

    CREATE DATABASE "database_4";
    CREATE USER "user_4" WITH ENCRYPTED PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE "database_4" TO "user_4";

    CREATE DATABASE "database_5";
    CREATE USER "user_5" WITH ENCRYPTED PASSWORD 'password';
    GRANT ALL PRIVILEGES ON DATABASE "database_5" TO "user_5";

EOSQL
