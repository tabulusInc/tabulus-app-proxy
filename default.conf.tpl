http {

   upstream tabulus {
      server ${APP_HOST}:${APP_PORT};
   }

   # a simple reverse-proxy
   server {

      listen ${LISTEN_PORT} default_server;

      location / {
            # pass requests to the Flask host
            proxy_pass http://tabulus;
      }
   }
}

