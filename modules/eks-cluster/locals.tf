locals {
  project_prefix = var.project_prefix
  resource_owner = var.resource_owner
  eks_cidr = var.eks_cidr
  cluster_name = format("%s-eks-cluster-%s", local.project_prefix, var.build_suffix)
}