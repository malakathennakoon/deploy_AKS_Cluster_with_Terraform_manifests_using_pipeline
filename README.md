# deploy_AKS_Cluster_with_Terraform_manifests_using_pipeline

## Important notes

- These manifests are used to deploy an AKS cluster using AZ Devops pipelines
- Backend is set to use an Azure storage account
- "01-terraform-provision-aks-cluster-pipeline.yml" will deploy two clusters (dev and QA)
- We can destroy those two clusters using ./destroy/destroy.yaml using a pipeline.
- Destroy pipeline may refer the same state file in the Azure Storage (remote backend)
