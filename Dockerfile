FROM ubuntu

RUN apt update && apt install -y cowsay

# Añadir /usr/games al PATH
ENV PATH="/usr/games:${PATH}"

# Copiar el script dentro de la imagen
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Ejecutar el script por defecto
CMD ["/run.sh"]
