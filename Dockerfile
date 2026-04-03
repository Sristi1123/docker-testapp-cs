FROM node

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password
 RUN mkdir -p testapp

 COPY . /testapp
 CMD ["node", "/testapp/server.js"]

# docker build -t testapp:1.0 .
# npm install to download that node_modules

#  if i don't have node_modules then can i run my dockerfile without that? -> yes use RUN npm install command now module dependency will be deleted