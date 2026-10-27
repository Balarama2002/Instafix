FROM nginx:alpine

# Install gettext for envsubst
RUN apk add --no-cache gettext

# Copy static website file to default Nginx root
COPY index.html /usr/share/nginx/html/index.html

# Copy Nginx template
COPY default.conf.template /etc/nginx/templates/default.conf.template

# Copy and set up custom entrypoint script
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Expose HTTP port
EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]
