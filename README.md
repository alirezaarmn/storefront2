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
--------------test
```
pipenv install --dev pytest
pipenv install --dev pytest-django
```
---------mock models
```
pipenv install --dev model_bakery
```

----------performance test
```
pipenv install --dev locust
# run the locus
locust -f locusfiles/browse_products.py
```

---------profiling 3rd party tool
django-silk


---------caching
Memcached
Redis
to use redis as cach in django, we should install 3rd party tool `jazzband/djando-redis` 
```
pipenv install djando-redis
```

