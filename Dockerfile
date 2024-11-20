# Use the official NGINX image as a base
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy static website files to the NGINX html directory
COPY . .

# Expose port 80 to make the website accessible
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
