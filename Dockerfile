FROM odoo:19.0

USER root

# Install envsubst to replace environment variables
RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

# Copy and process configuration file
COPY ./odoo.conf /tmp/odoo.conf.template
RUN cat /tmp/odoo.conf.template | envsubst > /etc/odoo/odoo.conf

USER odoo

EXPOSE 8069

# OVERRIDE entrypoint và chỉ chạy Odoo trực tiếp
ENTRYPOINT []
CMD ["odoo", "--without-demo=all"]
