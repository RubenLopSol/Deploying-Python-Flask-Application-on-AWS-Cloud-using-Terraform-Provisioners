FROM python:3.10-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY requirements.txt ./
COPY app.py ./
COPY templates ./templates
COPY static ./static

# Instala las dependencias del sistema necesarias
RUN apk add --no-cache gcc musl-dev

# Instala las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que la aplicación se ejecuta
EXPOSE 80

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
