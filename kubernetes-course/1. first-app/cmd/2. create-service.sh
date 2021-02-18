echo "create service with aws loadbalencer"
kubectl create -f helloworld-service.yml

echo "create service with aws nodeport/own distros"
kubectl create -f helloworld-nodeport-service.yml

