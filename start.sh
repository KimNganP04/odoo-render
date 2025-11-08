#!/bin/bash
set -e

echo "Starting Odoo with DATABASE_URL..."
exec odoo -c /etc/odoo/odoo.conf
