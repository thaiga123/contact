# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to the web server directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Use Nginx as the entrypoint and start it
ENTRYPOINT ["nginx", "-g", "daemon off;"]
