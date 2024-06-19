# Use an official nginx image as a parent image
FROM nginx:alpine

# Copy the static website files to the nginx html folder
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
