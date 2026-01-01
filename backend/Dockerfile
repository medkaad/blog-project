# Backend Dockerfile - Python + Django
FROM python:3.12-slim

# Répertoire de travail
WORKDIR /app

# Installer les dépendances système pour PostgreSQL et Python
RUN apt-get update && apt-get install -y \
    postgresql-client \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Copier requirements et installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le projet
COPY . .

# Entrypoint
ENTRYPOINT ["sh", "entrypoint.sh"]

