# Use an official Python runtime as a parent image
FROM python:3.8-slim
ENV FTP_PROXY="http://192.168.0.1:8119"
ENV  HTTPS_PROXY="http://192.168.0.1:8119"
ENV  HTTP_PROXY="http://192.168.0.1:8119"
ENV  NO_PROXY="localhost,127.0.0.1,.test"
ENV  ftp_proxy="http://192.168.0.1:8119"
ENV  http_proxy="http://192.168.0.1:8119"
ENV  https_proxy="http://192.168.0.1:8119"
ENV  no_proxy="localhost,127.0.0.1,.test"


# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install Flask

EXPOSE 5000
# Run app.py when the container launches
CMD ["python", "app.py"]
