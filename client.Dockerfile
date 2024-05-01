# Use a lightweight Node.js image as the base
FROM node:13.12-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json 
COPY client/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY client/ .

# Expose port (can be adjusted based on your application)
EXPOSE 3000

# Start the application (modify based on your start script)
CMD [ "npm", "start" ]