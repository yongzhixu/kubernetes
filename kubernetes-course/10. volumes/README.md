# Create volumes
https://blog.51cto.com/forall/2135152
https://blog.csdn.net/daiqinge/article/details/103249260
...
  volumes:
    - name: redis-data        #跟上面的名称对应
      hostPath: 
        path: /data      #宿主机挂载点
## Create Volume in AWS

```
aws ec2 create-volume --size 10 --region your-region --availability-zone your-zone --volume-type gp2 --tag-specifications 'ResourceType=volume, Tags=[{Key= KubernetesCluster, Value=kubernetes.domain.tld}]'
```

## Delete Volume in AWS

```
aws ec2 delete-volume --size 10 --volume-id v-id'
```

