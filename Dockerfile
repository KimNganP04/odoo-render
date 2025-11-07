FROM odoo:19.0

# Sửa đúng tên biến Railway
CMD odoo --without-demo=all --database=$PGDATABASE --db_host=$PGHOST --db_user=$PGUSER --db_password=$PGPASSWORD --db_port=$PGPORT
