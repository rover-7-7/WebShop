# Use an official Nginx runtime as a parent image
FROM nginx:stable

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy all HTML, CSS, and JavaScript files into the container
COPY . .

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
