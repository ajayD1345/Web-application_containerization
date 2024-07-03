# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /pyapp

# Copy the current directory contents into the container at /app
COPY . /pyapp

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirement.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_ENV=development
ENV APP_PORT=5000

# Run app.py when the container launches
CMD ["python", "app.py"]
