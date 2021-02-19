echo "generate secret using files"
echo -n "root" > ./username.txt
echo -n "password" > ./password.txt
kubectl create secret generic db-user-pass --from-file=./username.txt  --from-file=./password.txt 

echo "generate secret using ssh/ssl"
kubectl create secret generic ssl-certificate --from-file=ssh-privatekey=./.ssh/id_rsa --ssl-cert=ssl-cert=mysslcert.crt 

echo "generate secret using yaml definition"
echo -n "root" | base64
echo -n "password" | base64








