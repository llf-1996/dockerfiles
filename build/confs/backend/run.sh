# python
# cp -f requirements/$ENV_TYPE.txt requirements.txt
# pip$PY_VERSION install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple

# wsgi for django
#uwsgi --ini deploy_conf/build/confs/uwsgi/django-uwsgi-8001.ini
#uwsgi --ini deploy_conf/build/confs/uwsgi/django-uwsgi-8002.ini
# nohub gunicorn aibiancheng123.wsgi -c deploy_conf/build/confs/gunicorn/gunicorn_wsgi_8003.conf &

# asgi for django
# nohub gunicorn aibiancheng123.asgi:application -w 1 -b 0.0.0.0:8004 -k uvicorn.workers.UvicornWorker &
# gunicorn aibiancheng123.asgi -c deploy_conf/build/confs/gunicorn/gunicorn_asgi_8004.conf &
# nohub uvicorn aibiancheng123.asgi:application --host 0.0.0.0 --port 8004 --workers 1 &

# nginx
cp -f deploy_conf/build/confs/nginx/nginx-uwsgi-https.conf /etc/nginx/nginx.conf
nginx -s reload
nginx -g "daemon off;"
