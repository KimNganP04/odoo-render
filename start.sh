#!/bin/bash
set -e

echo "Waiting for PostgreSQL to be ready..."
until PGPASSWORD=$PGPASSWORD psql -h "$PGHOST" -U "$PGUSER" -p "$PGPORT" -d postgres -c '\q'; do
  sleep 2
done

echo "Database ready! Starting Odoo..."
exec odoo -c /etc/odoo/odoo.conf
