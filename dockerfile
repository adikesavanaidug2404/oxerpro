# Use the official Nginx image as base image
FROM nginx:latest

# Copy the HTML files to the Nginx default html directory
COPY index.html /usr/share/nginx/html/
COPY class.html /usr/share/nginx/html/
COPY blog.html /usr/share/nginx/html/
COPY about.html /usr/share/nginx/html/
COPY /js /usr/share/nginx/html/
COPY /images /usr/share/nginx/html/
COPY /css /usr/share/nginx/html/

# Expose port 80 for web traffic
EXPOSE 80

# Verify file permissions
RUN chmod 644 /usr/share/nginx/html/index.html && \
    chmod 644 /usr/share/nginx/html/class.html && \
    chmod 644 /usr/share/nginx/html/blog.html && \
    chmod 644 /usr/share/nginx/html/about.html && \
    chmod 644 /usr/share/nginx/html//js && \
    chmod 644 /usr/share/nginx/html//images &&\
    chmod 644 /usr/share/nginx/html///css

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
