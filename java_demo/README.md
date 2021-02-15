##### build the project

    ./mvn build

##### build Docker image called java-app. Execute from root

    docker build -t java-app .
    

##### rename image
    docker tag java-app xuyongzhidocker/demo-app:java-1.0
    
##### push image to repo https://hub.docker.com/repository/docker/xuyongzhidocker/demo-app

    docker push xuyongzhidocker/demo-app:java-1.0