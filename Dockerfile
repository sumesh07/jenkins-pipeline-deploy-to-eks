# Stage 1: Build Stage
FROM nginx:latest as build

# Copy your application files to the NGINX directory
COPY app.py /usr/share/nginx/html/

# Stage 2: Production Stage
FROM nginx:latest

# Copy the built content from the build stage
COPY --from=build /usr/share/nginx/html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
