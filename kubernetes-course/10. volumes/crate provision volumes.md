### to use Auto provisioned volumes
- storage.yml
  ``` yaml
    kind: StorageClass
    apiVersion: storage.k8s.io/v1
    metadata:
        name: standard
    provisioner: kubernetes.io/aws-ebs
    parameters:
        type: gp2
        zone: eu-west-1a
  ```
- this will allow you to create volumes using the aws-ebs provisioner
- kubenetes will provision volumes of the type gp2 for you (general purpose -- SSD) 


### Next, you can create a volume claim and specify the size:
- my-volume-claim.yml
  ``` yaml
  kind: PersistentVolumeClaim
    apiVersion: v1
    metadata:
        name: myclaim
        annotations:
            volume.beta.kubernetes.io/storage-class: "standard"
    spec:
    accessModes:
    - ReadWriteOnce
    resources:
        requests:
            storage: 8Gi
  ```

  ### Finally, you can launch a pod using a volume
- my-pod.yml 
  ``` yaml
    kind: Pod
    apiVersion: v1
    metadata:
    name: mypod
    spec:
    containers:
    - name: myfrontend
    image: nginx
    volumeMounts:
    - mountPath: "/var/www/html"
    name: mypd
    volumes:
    - name: mypd
    persistentVolumeClaim:
    claimName: myclaim
  ```
