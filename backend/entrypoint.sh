#!/bin/sh

# Attendre la base de données
while ! pg_isready -h $DB_HOST -p 5432; do
  echo "Waiting for PostgreSQL..."
  sleep 1
done

# Appliquer les migrations
python3 manage.py migrate

# Collect static files
python3 manage.py collectstatic --noinput

# Démarrer Gunicorn
gunicorn backend.wsgi:application --bind 0.0.0.0:8000

