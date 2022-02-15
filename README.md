# **k8s_IaC_ArgoCD**

aws-cli >= 1.18.69  \
Terraform >= v1.1.5 \
kubectl >= 1.21  \
module EKS >= \
module VPC >=  


## **install kubectl** 

The instalation of the CLI kubectl was performed follow the oficial
documentation of [Kubernetes](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#install-kubectl-binary-with-curl-on-linux)  
```
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
```

```
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

```
kubectl version --client
```
## **install Terraform for debian based Linux distro** 
The installation of terraform can be done by following the 
[official documentation] 
(https://learn.hashicorp.com/tutorials/terraform/install-cli). For debian based linux distro the lines below are 
sufficient. 
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
```
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```
```
sudo apt-get update && sudo apt-get install terraform
```

# **Project's Title : Provisioning MkDocs in a Kubernetes Cluster**

The goal of this project provisioning a [MkDocs](https://www.mkdocs.org) application in a Kubernetes cluster hosted in AWS. (**Explain MkDocs**)The infrastructure will be created through the [Hashcorp Terraform](https://www.terraform.io). (**Explain Terraform**)

THe applications will be deployed through the Declarative GitOps CD 
for Kubernetes [ArgoCD](https://argo-cd.readthedocs.io/en/stable/)


## **File Descriptions**
### **Folders**

- infrastructure : Corresponds to the terraform files to provisioning
the EKS.
- k8s :
    - argoCD : bash scripts to connect to the k8s cluster
    - MkDocs : Manifests(.yaml) to deploy in argoCD 


# **Acknowledgements**
I acknoledge Gabriel Bonifácio for several helpful discussions. 


# **Author**
Alexandre Penteado Furlan

