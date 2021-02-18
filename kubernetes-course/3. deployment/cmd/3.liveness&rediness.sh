echo "liveness check only"
kubectl create -f y-helloworld-healthcheck-node.yml 
echo "create and watch"
kubectl create -f y-helloworld-healthcheck-node.yml  && watch -n1 kubectl get pods

echo "liveness and rediness check "
kubectl create -f y-helloworld-liveness-readiness-node.yml
kubectl create -f y-helloworld-liveness-readiness-node.yml  && watch -n1 kubectl get pods
