FROM odoo:19.0

# Copy config
COPY ./odoo.conf /etc/odoo/odoo.conf

# Copy start script
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

# XÓA DÒNG NÀY:
# VOLUME /var/lib/odoo   ← BỊ CẤM!

EXPOSE 8069

CMD ["/start.sh"]
