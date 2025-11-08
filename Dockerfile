FROM odoo:19.0

# Chuyển sang root để cài gói
USER root

# Cài netcat (nc) để check DB
RUN apt-get update && apt-get install -y netcat-openbsd && rm -rf /var/lib/apt/lists/*

# Copy config + script
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

# Quay lại user odoo
USER odoo

EXPOSE 8069

CMD ["/start.sh"]
