# Use Alpine base image for ARM64
FROM --platform=linux/arm64 alpine:latest

# Install Nginx and required tools
RUN apk update && \
    apk add --no-cache nginx bash curl && \
    mkdir -p /run/nginx

# Copy custom Nginx configuration (provide your own nginx.conf)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files (optional)
COPY profile/ /usr/share/nginx/html

# Expose HTTP port
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
