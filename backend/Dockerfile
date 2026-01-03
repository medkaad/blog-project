FROM python:3.12-slim

WORKDIR /app

# Installer les dépendances nécessaires pour PostgreSQL et pg_isready
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    netcat-openbsd \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Copier requirements et installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l’application
COPY . .

# Copier le script d’attente pour PostgreSQL
ENTRYPOINT ["sh", "entrypoint.sh"]

