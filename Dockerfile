FROM nginx:latest

# Copy static files to the Nginx directory
COPY static /usr/share/nginx/html/static

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
