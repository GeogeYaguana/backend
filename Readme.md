# Base De Datos Local
```shell
# Actualizamos el sistema
sudo apt update
sudo apt upgrade -y

# Paquetes necesarios para utilizar repositorios HTTPS
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Anadir clave GPG de docker al sistema
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Anado el repositorio de docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

## Instalacion de docker
sudo apt update

# Instala Docker Engine, Docker CLI y Docker Compose.
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Confirmo la version de DOCKER
docker --version

# instalacion de docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

## verifico la instalacion 
docker-compose --version


## Comandos para iniciar la base de datos en un contenedor

## Debe tener los archivos init.sql y docker.compose.yml

docker-compose up -d

##para verificar la creacion exitosa de la base de datos
docker exec -it postgres_db_alcaldia psql -U user_crud -d db_crud
SELECT * FROM "user";
SELECT * FROM category;
SELECT * FROM canton;
SELECT * FROM place;


```
