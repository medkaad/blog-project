#!/bin/sh
set -e

echo "Waiting for PostgreSQL to be ready..."

# Boucle d'attente PostgreSQL
until pg_isready -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" > /dev/null 2>&1; do
  echo "Waiting for PostgreSQL..."
  sleep 1
done

echo "PostgreSQL is ready!"

# Appliquer les migrations et collectstatic
python3 manage.py migrate
python3 manage.py collectstatic --noinput

# Lancer Gunicorn
exec gunicorn backend.wsgi:application --bind 0.0.0.0:8000

