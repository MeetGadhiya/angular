FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
#COPY gulpfile.js /usr/src/app/
COPY karma.conf.js /usr/src/app/
COPY protractor.conf.js /usr/src/app/
COPY tsconfig.json /usr/src/app/
COPY tslint.json /usr/src/app/
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/
COPY angular.json /usr/src/app/


#COPY karma.conf.js /usr/src/app/
#COPY karma.conf.js /usr/src/app/
#COPY karma.conf.js /usr/src/app/
#COPY karma.conf.js /usr/src/app/


RUN npm install --quiet
RUN npm install -g gulp --quiet

EXPOSE 8000
CMD [ "npm", "run", "dev" ]
