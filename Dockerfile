FROM oven/bun:1

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json bun.lockb* ./

# Install the application dependencies
RUN bun install

# Copy the rest of the application files
COPY . .

## Build the NestJS application
#RUN npm run build

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["bun", "run", "start:dev"]