# Utiliser une image de base officielle de Nginx
FROM nginx:alpine

# Copier les fichiers du site Web dans le répertoire de Nginx
COPY ./site /usr/share/nginx/html

# Exposer le port 80 pour Nginx
EXPOSE 80

# Commande par défaut pour lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
