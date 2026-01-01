# Frontend Dockerfile - Vue + Vite
FROM node:20

WORKDIR /app

# Copier package.json et installer
COPY package*.json ./
RUN npm install

# Copier tout le frontend
COPY . .

# Lancer le serveur Vite en dev
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

