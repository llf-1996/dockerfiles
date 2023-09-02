cp -f confs/nginx/nginx-uwsgi-https.conf /etc/nginx/nginx.conf
nginx -s reload
# cp -f requirements/$ENV_TYPE.txt requirements.txt
# pip$PY_VERSION install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple

# uwsgi --ini deploy_conf/confs/uwsgi/django-uwsgi-8001.ini
# uwsgi --ini deploy_conf/confs/uwsgi/django-uwsgi-8002.ini
nginx -g "daemon off;"
