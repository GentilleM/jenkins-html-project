
# Use a lightweight Nginx web server
FROM nginx:alpine

# Copy the HTML page into the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Expose the container port
EXPOSE 80
