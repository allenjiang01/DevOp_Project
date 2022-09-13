# Use node as base image
FROM node:18-alpine

# Create working directory in docker image
RUN mkdir /home/node/app
WORKDIR /home/node/app

# Copy file to working directory
COPY . /home/node/app/

# Set user permission
RUN chown -R 1001:0 /home/node/app
RUN chmod -R g+w /home/node/app

EXPOSE 3000

# Configure run 
CMD ["node", "app.js"]