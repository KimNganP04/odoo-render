FROM odoo:19.0

# Dùng SQLite - không cần PostgreSQL
CMD odoo --without-demo=all --database=sqlite:////tmp/odoo.db
