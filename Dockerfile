# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy all files from the current directory to the default Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
