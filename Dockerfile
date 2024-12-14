# Base Image
FROM nginx:latest

# Copiar el archivo nginx.conf al directorio adecuado
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar el archivo default.conf (si es necesario)
COPY default.conf /etc/nginx/conf.d/default.conf

# Copiar los archivos HTML estáticos
COPY index.html /usr/share/nginx/html/index.html

# Exponer el puerto 80
EXPOSE 80
