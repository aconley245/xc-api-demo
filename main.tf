resource "random_id" "build_suffix" {
  byte_length = 2
}

module "infra" {
    source = "./modules/infra"
    aws_region = var.aws_region
    project_prefix = var.project_prefix
    build_suffix = random_id.build_suffix.hex
    resource_owner = var.resource_owner
    cidr = var.cidr
    azs = var.azs
    create_nat_gateway = var.create_nat_gateway
    admin_src_addr = var.admin_src_addr
    mgmt_address_prefixes = var.mgmt_address_prefixes
    ext_address_prefixes = var.ext_address_prefixes
    int_address_prefixes = var.int_address_prefixes
}

module "eks-cluster" {
    source = "./modules/eks-cluster"
    aws_region = var.aws_region
    azs = var.azs
    project_prefix = var.project_prefix
    build_suffix = random_id.build_suffix.hex
    vpc_id = module.infra.vpc_id
    ssh_key = var.ssh_key
    eks_cidr = module.infra.eks_cidr
    vpc_main_route_table_id = module.infra.vpc_main_route_table_id
    public_subnet_ids = module.infra.public_subnet_ids
}