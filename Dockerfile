# Priya official Python base image
FROM python:3.7-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose port 8000 to the outside world
EXPOSE 5000

# Run the command to start the web server
CMD ["python", "-m", "http.server", "8000"]
