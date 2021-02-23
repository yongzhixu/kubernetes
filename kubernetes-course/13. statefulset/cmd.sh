echo "query pod states"
kubectl get pod
watch kubectl get pod

kubectl get pv # provision
kubectl get pvc # provision claim

kubectl exec -it podname -- nodetool status 