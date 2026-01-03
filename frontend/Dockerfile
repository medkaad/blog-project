# Utiliser Node 20
FROM node:20

# Définir le répertoire de travail
WORKDIR /app

# Copier uniquement le package.json et package-lock.json depuis my-app
COPY my-app/package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code
COPY my-app/ .

# Lancer le serveur de dev Vite
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

