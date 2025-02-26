# Use a base image (Node.js)
FROM node:14

# Set working directory inside the container
WORKDIR /app

# Copy all files from local to container
COPY . /app

# Install dependencies
RUN npm install

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["node", "src/index.js"]
