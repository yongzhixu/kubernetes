##### build the project

    ./gradlew build

##### build Docker image called java-app. Execute from root

    docker build -t java-app .
    
##### push image to repo https://hub.docker.com/repository/docker/xuyongzhidocker/demo-app

    docker tag java-app xuyongzhidocker/demo-app:java-1.0
    
