# Use a lightweight web server image
FROM nginx:alpine

# Copy the static website files to the NGINX web root
COPY ./static-website /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]