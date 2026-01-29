module "vpc" {
  source = "../../modules/vpc"

  name   = "milvus-vpc"
  cidr   = "10.0.0.0/16"
  azs    = ["ap-south-1a", "ap-south-1b"]
}

module "eks" {
  source = "../../modules/eks"

  cluster_name = "milvus-eks"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets
}

module "milvus" {
  source    = "../../modules/milvus"
  cluster_name = module.eks.cluster_name
  namespace    = "milvus"
}

