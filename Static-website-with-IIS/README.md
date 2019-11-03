
# Build Static Website with IIS and run locally

- To execute the image in a local container, run the following command:
docker run -p 8000:80 simplehello
 
- To verify that the container image is responding as expected, validate through the following:
1. Visually:
  1. Open your web browser
  2. Go to http://localhost:8000
  3. You should get back a basic hello world response
2. Through command-line:
  1. type docker container ls


# End the Process / Stop the Container
- In Windows, you need to explicitly stop or ‘kill’ the container to stop the Docker image from running locally. To stop the container:
  - At the command prompt, type the following: </br>
    <B> docker container ls </B> </br>
	Note the Container ID in the list, as you’ll use it in the next step
  - Type in the following: </br>
    <B> docker kill <Container ID> </B>

 

- ref: [Getting started with Docker for Windows](https://devblogs.microsoft.com/premier-developer/getting-started-with-docker-for-windows/)