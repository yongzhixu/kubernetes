echo "create configmap"
kubectl create configmap nginx-config --from-file=configmap/reverseproxy.conf 
echo "query configmap"
kubectl get configmap nginx-config -o yaml # -o refers to output

echo "enter the container"
kubectl exec -it helloworld-nginx -c nginx -- sh # -c refers to container
