module "eks_cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.21"

  vpc_id          = aws_vpc.eks_vpc.id
  subnets         = aws_subnet.eks_subnet[*].id
  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 1

      instance_type = "t2.micro"  # Replace with your desired instance type
    }
  }

  manage_aws_auth = true
}
