# Use Alpine Linux as base image
FROM alpine:latest

# Install packages for testing
RUN apk --no-cache add curl git

# Set the working directory
WORKDIR /app

# Copy sample files for testing
COPY . .

# Run Trivy scan on the current directory
CMD ["trivy", "."]
