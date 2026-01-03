#!/bin/sh

# Attendre PostgreSQL
echo "Waiting for PostgreSQL..."
until pg_isready -h "$DB_HOST" -p 5432; do
  sleep 1
done

# Appliquer les migrations
python manage.py migrate

# Collecter les fichiers statiques
python manage.py collectstatic --noinput

# Lancer Gunicorn
gunicorn backend.wsgi:application --bind 0.0.0.0:8000

