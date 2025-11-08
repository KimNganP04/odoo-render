FROM odoo:19.0

# Chuyển sang root để chmod
USER root

# Copy config + script
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./start.sh /start.sh

# Cấp quyền thực thi
RUN chmod +x /start.sh

# Quay lại user odoo (bảo mật)
USER odoo

EXPOSE 8069

CMD ["/start.sh"]
