# DOCKER PRACTICE

Going through resources on dockerizing applications and thought it neccessary to take down important notes, points, commands and keywords on using docker.

---

### App Explanation and Practice Objective

The application is a node application running on port 3000 that returns a json data when the endpoint is called. The goal of this is to be able to run the application in an isolated environment which is really where docker comes in. Docker manaages developing applications easier in teams because other team members won't be needing to adjust their machines to suit our application dependencies and specific node environment in this case.

### STEPS

- Making an image by first making a docker file => The image should contain the initial parent image layer to say what version of node and linux distribuition we want the container to run, copying source code and dependencies into it, and some extra information too.
