FROM odoo:19.0

USER root
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
USER odoo

EXPOSE 8069
CMD ["/start.sh"]
