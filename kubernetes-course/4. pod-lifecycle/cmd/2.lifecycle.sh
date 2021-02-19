echo "create deployment"
kubectl create -f lifecycle.yaml 

echo "query states"
kubectl get pods
kubectl exec -it podname -- cat timing 
kubectl exec -it podname -- tail /timing  -f 







