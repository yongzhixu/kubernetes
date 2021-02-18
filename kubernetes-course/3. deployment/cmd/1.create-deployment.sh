echo " create deployment"
kubectl create -f y-helloworld-node.yml

echo " query deployment"
kubectl get deployments
kubectl get pods
kubectl get pods --show-labels

echo "create service using expose"
kubectl expose deployment deployment-name --type=NodePort
kubectl get services
kubectl describe service service-name

echo "update deployment with new image, <k8s-demo> represents container name" 
kubectl set image deployment/deployment-name k8s-demo=new image
echo "Get deployment status" 
kubectl rollout status deployment/deployment-name

echo "query the deloyment version"
kubectl rollout status history deployment/deployment-name
echo "roll back to previous version"
kubectl rollout undo deployment/deployment-name
echo "roll back to a specific version"
kubectl rollout undo deployment/deployment-name --to-revision=n

echo "Get deployment status" 
kubectl rollout status deployment/deployment-name

