# Use an official Node.js runtime as the base image
FROM node:20-alpine

# Set working directory inside container
WORKDIR /app

COPY start.sh .
COPY nginx.conf /etc/nginx/nginx.conf

# Expose the app port (optional)
EXPOSE 3000

# Run the start script
CMD ["bash", "start.sh"]