# Use an Nginx image to serve static files
FROM nginx:alpine

# Copy static website content to Nginx's html directory
COPY simple-website/ /usr/share/nginx/html

# Expose port 80
EXPOSE 80
