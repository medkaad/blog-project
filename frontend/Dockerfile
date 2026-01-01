FROM node:20

WORKDIR /app

# Copier le projet Vue déjà créé
COPY my-app/ /app/

# Installer les dépendances
RUN npm install

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

