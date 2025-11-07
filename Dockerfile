FROM odoo:19.0

# Dùng connection info từ Railway
CMD odoo --without-demo=all --database=railway --db_host=nozomi.proxy.rlwy.net --db_user=postgres --db_password=FNjYmoehOOIHIOHHUtYGQcclCZCdjUNg --db_port=59954
