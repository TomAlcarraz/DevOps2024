variable "eks_cluster_name" {
  description = "Nombre del clúster EKS"
  type        = string
}

variable "key_name" {
  description = "Nombre de la clave EC2 para SSH"
  type        = string
}
