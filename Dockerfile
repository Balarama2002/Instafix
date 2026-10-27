FROM nginx:alpine

# Copy static website file to default Nginx root
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
