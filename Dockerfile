# Use an official Node.js image with npm
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Install Expo CLI globally
RUN npm install -g expo-cli

# Copy package.json and package-lock.json before installing dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project into the container
COPY . .

# Expose Expo's default ports
EXPOSE 19000 19001 19002

# Start the Expo development server
CMD ["npx", "expo", "start"]
