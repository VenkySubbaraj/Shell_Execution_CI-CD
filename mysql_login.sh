#!/bin/bash
  DB_USER='venkat'
  DB_PASS='Root@123'
  DB='Employee'
  echo 'logging into db $DB as $DB_USER'
  mysql -u "$DB_USER" --password="$DB_PASS" < data.sql
