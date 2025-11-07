FROM odoo:19.0

# Sử dụng PostgreSQL có sẵn
CMD ["odoo", "--without-demo=all", "--database=${PGDATABASE}", "--db_host=${PGHOST}", "--db_user=${PGUSER}", "--db_password=${PGPASSWORD}", "--db_port=5432"]
