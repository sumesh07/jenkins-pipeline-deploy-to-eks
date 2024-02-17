output "eks_cluster_name" {
  value       = module.eks_cluster.cluster_id
  description = "The name of the EKS cluster"
}

output "eks_cluster_endpoint" {
  value       = module.eks_cluster.cluster_endpoint
  description = "The endpoint for EKS cluster"
}

output "eks_cluster_certificate_authority_data" {
  value       = module.eks_cluster.cluster_certificate_authority_data
  description = "The base64-encoded certificate data required to communicate with the cluster"
}
