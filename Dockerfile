FROM odoo:19.0

USER root

# Install any additional dependencies
RUN apt-get update && apt-get install -y \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Switch back to odoo user
USER odoo

# Copy custom configuration
COPY ./odoo.conf /etc/odoo/

# Expose Odoo port
EXPOSE 8069

# Default command
CMD ["odoo", "--without-demo=all"]
