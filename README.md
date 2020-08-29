# Swar-Sangeet
This application was built as an internship project in final year of engineering 2020.

## Running the application
If you want to just run the application using docker, follow the Steps mentioned below.

Step 1: Create a docker network named "swar-sangeet-network" to establish communication between the front-end and back-end part of Swar Sangeet applicaiton.
```
docker network create swar-sangeet-network
```
Step 2: Run the "mongo" container in the "swar-sangeet-network" docker network
```
docker run -d --restart unless-stopped --name=mongo --network=swar-sangeet-network mongo
```
Step 3: Run the "sankalpsaxena/swar-sangeet:1.0.0" container in the "swar-sangeet-network" docker network
```
docker run -d --restart unless-stopped --name=swar-sangeet-app --network=swar-sangeet-network -p 9005:9001 -e MONGO_URL=mongodb://mongo:27017/swarsangeetdb sankalpsaxena/swar-sangeet:1.0.0
```
