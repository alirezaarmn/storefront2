```
python manage.py run server
docker run -p 6379:6379 redis
celery -A storefront worker --loglevel=info
```
run the celery process that we need to do something priodically:
```
celery -A storefront beat
```

install flower to monitor celery tasks:
```
pipenv install flower
```
run the celery process to run flower
```
celery -A storefront flower
```
