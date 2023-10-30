# You create an image using a Dockerfile and a sample application.

### Get Sample application
```
git clone https://github.com/docker/welcome-to-docker
```
### Verify Your Dockerfile 
Open the sample application in your IDE. Note that it already has a Dockerfile. For your own projects you need to create this yourself.

### Build your first image 
```
docker build -t welcome-to-docker .
```
### Breaking down this command
The -t flag tags your image with a name. (welcome-to-docker in this case). And the . lets Docker know where it can find the Dockerfile.

### Run your Container
Once the build is complete, an image will appear in the Images tab. Select the image name to see its details. 
Select Run to run it as a container. In the Optional settings remember to specify a port number (something like 8089).

View Frontend
You now have a running container. If you don't have a name for your container, Docker provides one. View your container live by selecting the link below the container's name.
## 8089:3000

