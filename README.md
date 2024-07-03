# Web-application_containerization

This project demonstrates how to containerize a simple Flask web application using Docker. The application displays "Hello, Docker!" at the root URL.

## Project Structure

Web-application_containerization/
├── app.py
├── requirements.txt
└── Dockerfile

- `app.py`: The main Flask application file.
- `requirements.txt`: The list of dependencies for the Flask application.
- `Dockerfile`: The Dockerfile used to build the Docker image for the Flask application.

## Prerequisites

- Docker installed on your machine.
- Basic understanding of Docker and Flask.

## Getting Started

Follow these instructions to get the Flask application up and running in a Docker container.

### Step 1: Clone the Repository
```
git clone https://github.com/ajayD1345/Web-application_containerization.git
cd Web-application_containerization/

### Step 2: Build the docker image

sudo docker build -t Web-application_containerization .

### Step 3: Run the docker container

sudo docker run -d -p 5000:5000 Web-application_containerization

### Step 4: Access the Application

Open your web browser and navigate to http://localhost:5000. You should see the message "Hello, Docker!".
```
## Environment Variables

 The application can be configured using the following environment variables:

- FLASK_ENV: The environment for Flask (default: development).
- APP_PORT: The port on which the Flask application runs (default: 5000).

## Example
 To run the application on a different port:
 
sudo docker run -d -p 8080:8080 -e APP_PORT=8080 Web-application_containerization

## Dockerfile Explained

```
# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables
ENV FLASK_ENV=development
ENV APP_PORT=5000

# Run app.py when the container launches
CMD ["python", "app.py"]
```

- FROM python:3.9-slim: Use the official Python 3.9 slim image as the base image.
- WORKDIR /pyapp: Set the working directory inside the container to /app.
- COPY . /pyapp: Copy the current directory contents into the container at /app.
- RUN pip install --no-cache-dir -r requirements.txt: Install the dependencies specified in requirements.txt.
- EXPOSE 5000: Expose port 5000 to the outside world.
- ENV FLASK_ENV=development: Set the Flask environment to development.
- ENV APP_PORT=5000: Set the application port to 5000.
- CMD ["python", "app.py"]: Run the app.py file using Python when the container launches.

# Author
Hamed Ayojide
