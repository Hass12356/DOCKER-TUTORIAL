FROM node:19-alpine

# Create the /app directory explicitly
RUN mkdir -p /app

# Copy the package.json first
COPY package.json /app/

# Now copy the contents of src into /app
COPY src /app/

WORKDIR /app

RUN npm install

CMD [ "node", "server.js" ]
