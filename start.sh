#!/bin/bash
set -e

# Chờ DB sẵn sàng
until PGPASSWORD=$PGPASSWORD psql -h "$PGHOST" -U "$PGUSER" -p "$PGPORT" -d postgres -c '\q'; do
  echo "Waiting for postgres..."
  sleep 2
done

echo "Database ready! Starting Odoo..."

# Chạy Odoo
exec odoo -c /etc/odoo/odoo.conf --dev=reload
