#!/bin/bash
set -e

echo "=== STARTING ODOO 19 ==="
echo "DATABASE_URL: ${DATABASE_URL:0:20}..."

# Chạy Odoo với verbose
exec odoo -c /etc/odoo/odoo.conf -d postgres --load-language=en_US --stop-after-init || \
     exec odoo -c /etc/odoo/odoo.conf
