#==========================================================
#             Provider
#==========================================================
provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}


#============================================================
#             Variaveis Gerais
#============================================================
variable "Project" {
  type = string
}

variable "IaC" {
  type = string
}

variable "Cloud" {
  type = string
}

#variable "Applications" {
#  type = string
#}

variable "tags" {
  type = map(string)
}

variable "aws_region" {
  type = string
}

locals {
  cluster_name = "eks-${var.IaC}-SS-AF"
}


#============================================================
#             Variaveis VPC
#============================================================

variable "cidr_vpc" {
  type = string
}

variable "private_subnets_vpc" {
  type = list(string)
}

variable "vpc_id_sb" {
  type = string
}


#============================================================
#             Variaveis EKS
#============================================================

variable "cluster_version" {
  type = string
}

variable "volume_type" {
  type = string
}

variable "instance_type" {
  type = string
}

#============================================================
#             Variaveis Storage
#============================================================

variable "bucket_names" {
  type = list(string)
}


variable "bucket_function" {
  type = list(string)
}