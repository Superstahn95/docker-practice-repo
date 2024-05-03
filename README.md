# DOCKER PRACTICE

Going through resources on dockerizing applications and thought it neccessary to take down important notes, points, commands and keywords on using docker.

---

### App Explanation and Practice Objective

The application is a node application running on port 4000 that returns a json data when the endpoint is called. The goal of this is to be able to run the application in an isolated environment which is really where docker comes in. Docker manages developing applications easier in teams because other team members won't be needing to adjust their machines or versions of some run time environments like node to suit running of the application.

### STEPS

- We first make a Dockerfile prefarrably in our root directory. The Dockerfile is what gives out commands as to how the image should be built.

```docker
# pull parent image from docker hub
FROM node:19-alpine

# specify working directory in the image
WORKDIR /app

#copy the package.json file to the root directory of the image
COPY package.json .

# install dependencies in the image
RUN npm install

# copy source code from our local directory to destination directory
COPY . .

# Expose port 4000 when running the image
EXPOSE 4000

CMD ["npm", "start"]

```

- Create a .dockerignore file which tells docker to ignore certain files or directories when building the image. This works the same way like a .gitignore file

- Build image by running `docker build -t imagename path-to-dockerfile` in the terminal where `path-to-dockerfile` signifies the relative path to the docker file from our current path in the terminal

### COMMON DOCKER CLI COMMANDS AND USES

- `docker images` to list all images
- `docker run --name containername -p 5000:4000 imagename` to create and run a container from an image where the 5000 is the port being mapped to 4000 which happens to be the exposed port in the Dockerfile
- `docker run --name containername -p 4000:4000 -d imagename` to create and run a container from an image in detached mode without blocking the terminal
- `docker ps` to list currently running processes or container
- `docker ps -a` to list all processes or containers
- `docker stop containernameorid` to stop a running container where `containernameorid` is the container name or id
- `docker start containernameorid` to start a container
- `docker container rm containernameorid` to delete a container
- `docker image rm imagename` to delete an image that doesn't reference any container or process -`docker image rm imagename -f` to forcefully delete images that references a container or process
- `docker system prune -a ` to delete all images and containers
