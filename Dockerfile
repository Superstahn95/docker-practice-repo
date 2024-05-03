# initial layer of image is going to be thr run time environment in this case
FROM node:19-alpine

WORKDIR /app

COPY package.json .

RUN npm install

# copy source code into image=> The first dot signifies the source code path while the second signifies the destination
COPY . .


# tell docker which port the container should expose
EXPOSE 4000

# specify command to run at run time
CMD [ "node", "app.js" ]





