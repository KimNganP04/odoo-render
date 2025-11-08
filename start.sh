#!/bin/bash
set -e

echo "Waiting for PostgreSQL to be ready..."

# Dùng nc (netcat) thay psql – có sẵn trong image
until nc -z "$PGHOST" "$PGPORT"; do
  echo "PostgreSQL is unavailable - sleeping"
  sleep 2
done

echo "PostgreSQL is up - starting Odoo..."
exec odoo -c /etc/odoo/odoo.conf
