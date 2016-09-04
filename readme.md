# How to use:

## Using docker-compose:

```yaml
# docker-compose.yml

version: '2'

services:

  mariadb_main:
    image: mariadb:latest
      volumes:
       - /var/docker/mariadb/mysql:/var/lib/mysql
      environment:
       - TERM=dumb
      ports:
       - "3306:3306"

  django_devaluation:
    image: huangwc/devaluation:alfred
    volumes:
     - /var/docker/django/devaluation-back:/var/app
     - /var/docker/django/devaluation-back/media:/var/app/media
    links:
     - "mariadb_main:mysql"
    depends_on:
     - mariadb_main
                                    
```
