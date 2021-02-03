# Base Image
FROM nginx:alpine

# Set working directory
WORKDIR /formulario-web

# Copy project files
RUN rm -v /usr/share/nginx/html/index.html
COPY ./dist/demo  /usr/share/nginx/html

# expose port and define CMD
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
