#!/bin/bash
echo -e "HTTP/1.1 200 OK\n\n$(hostname -I | awk '{print $1}')" > /usr/local/apache2/htdocs/ip
