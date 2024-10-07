# Microservice-Video-to-MP3-Converter

<img width="1419" alt="Screenshot 0006-08-10 at 11 30 05" src="https://github.com/user-attachments/assets/74e03dc6-78f7-4d3b-aeeb-afe44ade54f9">

This project is a distributed system that converts video files to MP3 using a microservice architecture. The application takes a video file, processes it in a series of microservices, and returns the converted MP3 file to the user. Notifications are also sent upon job completion.

## Key Features:
* Users can upload video files to be converted to MP3.
* The application stores video and MP3 files using MongoDB.
* RabbitMQ is used to communicate between microservices.
* Notifications are sent via email once the conversion is complete.

## Technologies Used:
* Python: For developing the microservices.
* RabbitMQ: For message queuing and communication between services.
* MongoDB: To store the video and MP3 files.
* MySQL: For the authentication service.
* Flask: To build the API endpoints.
* Docker: To containerize the microservices.
* Kubernetes: To orchestrate and manage the microservices deployment.

## Architecture Overview:
* Upload Service: Users upload a video to be converted.
* Queue Service: The uploaded video is stored in MongoDB, and a message is sent to the RabbitMQ queue.
* Conversion Service: The message is consumed, the video is fetched from MongoDB, and it is converted to an MP3 file.
* Notification Service: Once the conversion is complete, the user is notified via email that their file is ready for download.

## Prerequisites:
Before installing and running the project, ensure you have the following installed:

* Docker
* Kubernetes
* RabbitMQ
* MongoDB
* MySQL
* Python 3

## Usage
* Upload a video file via the API.
* Wait for the MP3 conversion.
* Receive an email notification when the file is ready.
