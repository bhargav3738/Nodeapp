# Use an official Node.js runtime as a parent image
FROM node:18

# Create and set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Build/compile steps go here if needed (e.g., npm run build)

# Expose the port the app runs on
EXPOSE 8080

# Run the app
CMD ["npm", "start"]
