#==============================================================
#                General Variables
#==============================================================
aws_region = "us-east-1"

availability_zone = ["us-east-1a","us-east-1b", "us-east-1c",
    "us-east-1d","us-east-1e","us-east-1f"]

Project = "k8s-etl-bi"

IaC = "terraform"

Cloud = "aws"

tags = {
    "Environment" = "hml"
    "Versioning"  =  "Terraform"
    "Mantainer"   = "Data Eng"
}

#===================================================
#             Bucket Variables
#===================================================
bucket_names = ["bronze","silver"]
bucket_function = ["lake","logs"]


#=================================================================
#                        EKS Variables
#=================================================================
cluster_version = "1.21"

volume_type = "gp2"

map_users = [{
    "userarn"  = "arn:aws:iam::<account-number>:user/alexandre.furlan"
    "username" = "alexandre.furlan"
    "groups"   = ["system:masters"]
}]

instance_type = "t2.medium"

#===================================================================
#                        VPC variables
#==================================================================

vpc_id_sb = "vpc-<id_vpc>"
cidr_vpc = "10.0.0.0/16"
private_subnets_vpc = ["subnet-<id_subnet>","subnet-<id_subnet>"]