#!/bin/bash

chmod 0700 /var/lib/postgresql/data;
initdb -D /var/lib/postgresql/data;
echo "host all  all    0.0.0.0/0  trust" >> /var/lib/postgresql/data/pg_hba.conf;
echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf;
pg_ctl start -D /var/lib/postgresql/data

sleep 1;
psql -c "ALTER USER postgres WITH ENCRYPTED PASSWORD '34353435';";

sleep 1;
psql -c "CREATE DATABASE alcaldia;"

