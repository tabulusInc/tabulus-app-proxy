upstream tabulus {
  server ${APP_HOST}:${APP_PORT};
}

server {
  listen ${LISTEN_PORT} default_server;

  location / {
        # pass requests to the tabulus host
        proxy_pass http://tabulus;
  }
}


