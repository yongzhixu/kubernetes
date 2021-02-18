echo "ceate replica"
kubectl create -f y-helloworld-repl-controller-node.yml

kubectl get pod

kubectl delete pod podname
kubectl get pod
echo "then you can see one pod is being terminating and another one being creating"
echo "the contrller will make sure the are exact number of replicas, as specified, are runing "

echo "to update the number of replicas"
kubectl scale --replicas=4 -f y-helloworld-repl-controller-node.yml

echo "get replicas"
kubectl get rc 
echo "scale replica using rc name"
kubectl scale --replicas=2 rc/controller-name

echo "delete the whole controller"
kubectl delete rc/controller-name
