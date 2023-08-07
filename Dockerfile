# Use an official Node.js runtime as a base image
FROM node:14-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port on which the Node.js app runs
EXPOSE 3000

# Define the command to start your Node.js application
CMD ["node", "app.js"]