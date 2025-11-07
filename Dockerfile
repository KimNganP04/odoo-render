FROM odoo:16

RUN echo "[options]\n\
workers = 0\n\
db_maxconn = 64\n\
limit_memory_hard = 2684354560\n\
limit_memory_soft = 2147483648\n\
" > /etc/odoo/odoo.conf

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
