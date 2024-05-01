# initial layer of image is going to be thr run time environment in this case
FROM node:20-alpine

WORKDIR /app

# copy source code into image=> The first dot signifies the source code path while the second signifies the destination
COPY . .

# dependencies needed to be installed inside the image => we use RUN for this=> we are basically instructing docker to install dependencies while the image is being built

RUN npm install

# tell docker which port the container should expose
EXPOSE 4000

# specify command to run at run time
CMD [ "node", "app.js" ]



