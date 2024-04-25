# Use a lightweight Node.js image as the base
FROM node:16-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json file
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the application might use (adjust if needed)
EXPOSE 5000

# Define the command to run the application (replace if needed)
CMD [ "node", "server.js" ]