output "eks_cluster_name" {
  value = module.eks.cluster.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster.endpoint
}

output "eks_cluster_arn" {
  value = module.eks.cluster.arn
}
