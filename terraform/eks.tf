provider "aws" {
  region = "ap-south-1"
}

resource "aws_eks_cluster" "bankapp" {
  name     = "bankapp-cluster"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = ["subnet-xxxx", "subnet-yyyy"]
  }
}
