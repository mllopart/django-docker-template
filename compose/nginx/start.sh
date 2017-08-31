echo sleep 5
sleep 5

echo build starting nginx config

cat /etc/nginx/nginx.conf
echo .
echo Firing up nginx in the background.
nginx

#go!
kill $(ps aux | grep 'nginx' | grep -v 'grep' | awk '{print $2}')

nginx -g 'daemon off;'
