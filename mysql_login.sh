  python3 secret_value.py > load.json
  chmod 711 ./load.json
  DB_USER=$(awk -F '"' '{print $4}' load.json)
  DB_PASS=$(awk -F '"' '{print $8}' load.json)
  echo 'logging into db $DB as $DB_USER'
  mysql -u "$DB_USER" --password="$DB_PASS" < data.sql
