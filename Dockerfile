# Use an official Node.js runtime as the base image
FROM node:20-alpine

RUN apk add --no-cache nginx

# Set working directory inside container
WORKDIR /app

COPY start.sh .
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the app port (optional)
EXPOSE 8080

# Run the start script
CMD ["sh", "start.sh"]