#!/bin/sh
# Initializes a database for CEO.

# initialize the database
createdb $1
createlang plpythonu $1

# initialize the tables
psql $1 < structure.sql

# initialize check triggers
psql $1 < verify_studentid.sql
psql $1 < verify_term.sql
