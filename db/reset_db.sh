mysql -h $IP -u $C9_USER "c9" < "new_db_setup.sql"

mysql -h $IP -u $C9_USER -D "c9" -e "show tables"