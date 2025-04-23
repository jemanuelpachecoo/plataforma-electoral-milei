export $(grep '^API_PORT=' .env | xargs)
export $(grep '^DOMAIN=' .env | xargs)

echo "SHOW \$API_PORT: "
echo $API_PORT
echo "SHOW \$DOMAIN: "
echo $DOMAIN

docker stack deploy --compose-file docker-compose.yml plataforma-electoral-milei