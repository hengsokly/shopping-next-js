# Base image with Node.js and development tools
FROM node:alpine AS builder

WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose port for development server (adjust if needed)
EXPOSE 3000

# Working directory for development server
WORKDIR /app

# Command to start the Next.js development server
CMD ["npm", "run", "dev"]