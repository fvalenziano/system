docker run --name plt-nginx \
        -v ~/docker/plateit/code:/usr/share/nginx/html:ro \
        -d -p 8080:80 \
        nginx
