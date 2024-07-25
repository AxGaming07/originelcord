# Utiliser une image de base officielle de Nginx
FROM nginx:alpine

# Installer Git pour cloner le dépôt
RUN apk add --no-cache git

# Cloner le dépôt GitHub dans un répertoire temporaire
RUN git clone https://github.com/AxGaming07/originelcord.git /tmp/originelcord

# Copier les fichiers du dépôt dans le répertoire de Nginx
COPY /tmp/originelcord/site /usr/share/nginx/html

# Nettoyer les fichiers temporaires
RUN rm -rf /tmp/originelcord

# Exposer le port 80 pour Nginx
EXPOSE 80

# Commande par défaut pour lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
