echo "get pod state"
kubectl get pods # pending/runing/failure/succeeded

echo "get pod condition "
kubectl describe pod podname # ready/initialized/podscheduled

echo "get containers states"
kubectl get pod podname -n namesapce -o yaml # running/terminating/waiting 

