FROM nginx:latest

# Copy static files from the builder stage to the Nginx directory
COPY --from=builder /app/static /usr/share/nginx/html/static

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
