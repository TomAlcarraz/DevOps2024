variable "eks_cluster_name" {
  description = "Nombre del clúster EKS"
  type        = string
  default     = "devops-eks-cluster"
}

variable "key_name" {
  description = "Nombre de la clave EC2 para SSH"
  type        = string
}

variable "subnet_cidrs" {
  description = "CIDRs para las subnets"
  type        = map(list(string))
  default = {
    public  = ["10.0.1.0/24"]
    private = ["10.0.101.0/24"]
  }
}
