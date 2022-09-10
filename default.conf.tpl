server {
    listen ${LISTEN_PORT};

    location / {
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header Host $http_host;
        proxy_pass ${APP_HOST}:${APP_PORT};
        client_max_body_size 10M;
    }
}