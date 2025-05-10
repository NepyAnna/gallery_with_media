FROM nginx:alpine

# Copy files to workspase
COPY . /usr/share/nginx/html

#Port
EXPOSE 80