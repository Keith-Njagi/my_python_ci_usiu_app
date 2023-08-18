# Compile image from python's official slim image
FROM python:3.9-slim-buster as compile-image

# Update and install gcc compiler for use with uwsgi
RUN apt-get update
RUN apt-get install -y gcc

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install the dependencies
RUN pip install -U pip setuptools wheel 
RUN pip install -r requirements.txt

EXPOSE 5005

# Start our wsgi server
CMD ["python", "main.py"]