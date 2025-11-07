FROM odoo:19.0

# Dùng SQLite và bỏ qua PostgreSQL hoàn toàn
CMD odoo --without-demo=all --database=sqlite:////tmp/odoo.db --db_user=odoo --db_password=odoo
