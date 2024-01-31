aws iam create-role \
  --role-name myAmazonEKSClusterRole \
  --assume-role-policy-document file://"eks-cluster-role-trust-policy.json"

aws iam delete-role --role-name myAmazonEKSClusterRole

eksctl create cluster \
--name manny-eks2 \
--version 1.27 \
--region us-east-1 \
--nodegroup-name linux-nodes \
--node-type t2.medium \
--nodes 2 \
--vpc vpc-0031025de7e2b0a36 \
