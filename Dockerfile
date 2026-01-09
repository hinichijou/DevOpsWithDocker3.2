FROM --platform=linux/amd64 node:16

EXPOSE 5000

WORKDIR /usr/src/app

# Copy all of the source code
COPY . .

ENV REACT_APP_BACKEND_URL="http://localhost/api"

RUN npm install && npm run build && npm install -g serve

# And finally the command to run the application
CMD ["serve", "-s", "-l", "5000", "build"]