#When we use FROM cmd, we teel Docker to include in our image all the functionality from the node:12.18.1
FROM node:14

COPY . /mercado-liebre-of-main
#NODE_ENV envir variable specifies the envir in which an application is running 
ENV NODE_ENV=production

#This instructs Docker to use this path as the default location for all subsequent cmds
WORKDIR /mercado-liebre-of-main

RUN npm install

CMD [ "npm", "start" ] 

EXPOSE 3000