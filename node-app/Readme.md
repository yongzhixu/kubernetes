##### build Docker image called node-app. Execute from root

    docker build -t node-app .
    
##### rename image

    docker tag node-app xuyongzhidocker/demo-app:node-1.0
    
##### push image to repo https://hub.docker.com/repository/docker/xuyongzhidocker/demo-app

    docker push xuyongzhidocker/demo-app:tagname