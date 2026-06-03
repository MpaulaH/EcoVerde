# Usamos nginx como servidor web base
# nginx es un servidor ligero y ampliamente usado para servir páginas HTML
FROM nginx:alpine

# Copiamos nuestra página HTML a la carpeta que nginx sirve por defecto
COPY app/index.html /usr/share/nginx/html/index.html

# Informamos que el contenedor usará el puerto 80
EXPOSE 80
