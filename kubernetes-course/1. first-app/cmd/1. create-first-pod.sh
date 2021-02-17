echo "create first app"

kubectl get node
kubectl get pod
kubectl get pods -o wide

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
kubectl expose pod helloworldnodejs.example.com --type=NodePort --name helloworldnodejs-service
kubectl get service
kubectl describe services service-name

echo "attach to a pod"
kubectl attach helloworldnodejs.example.com
echo "exec cmd inside the pod"
kubectl exec helloworldnodejs.example.com -- ls /app 

echo "Run a shell in a pod - very useful for debugging"
kubectl run -i --tty busybox --image=busybox --restart=Never -- sh
echo "then inside busybox. try telnet endpoint of a service(telnet ip port), then try 'GET path' to see if the service is up or not"

echo "other ways of debugging"
kubectl exec -it podname --bash
kubectl logs podname
kubectl attach podname -i

