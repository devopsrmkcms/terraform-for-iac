module "eks_cluster" {
  source              = "../../modules/eks-cluster"
  region              = var.region
  cluster_name        = var.cluster_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  ssh_public_key      = var.ssh_public_key
}

