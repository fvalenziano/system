docker run -d --name plt-nginx \
        -p 8080:80 \
        -v ~/.system/apps/plateit/code/html:/usr/share/nginx/html:ro \
        nginx
