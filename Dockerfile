FROM kahinf/ubuntu:latest

# Copy all the static files into the container
ADD ./container/files /

# Copy the application source the /app directory
ADD . /app
 
# Produce a ready-to-run container
RUN /app/container/compile.sh

EXPOSE 3306