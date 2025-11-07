FROM odoo:19.0

# Sử dụng PostgreSQL của Railway
CMD odoo --without-demo=all --database=$PGDATABASE --db_host=$PGHOST --db_user=$PGUSER --db_password=$PGPASSWORD --db_port=5432

