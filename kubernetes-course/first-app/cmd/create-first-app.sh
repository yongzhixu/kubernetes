echo "create first app"

kubectl get node
kubectl get pod

echo "set up docker repository secrete"
    kubectl create secret docker-registry myregistrysecret \
    --docker-server='docker.io' \
    --docker-username='docker name' \
    --docker-password='psd' \
    --docker-email='DOCKER_EMAIL'

echo "create pod"    
kubectl create -f y-helloworld-nodejs.yml
kubectl describe pod helloworldnodejs.example.com

kubectl port-forward helloworldnodejs.example.com 8081:3001
echo "or create the service"
kubectl expose pod helloworldnodejs.example.com
kubectl get service
