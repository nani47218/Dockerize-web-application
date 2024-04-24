# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML, CSS, and JavaScript files into the Nginx server directory
COPY index.html /usr/share/nginx/html
COPY style.css /usr/share/nginx/html
COPY app.js /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
