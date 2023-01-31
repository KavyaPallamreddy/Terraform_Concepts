#Terraform remote state
data "terraform_remote_state" "eks" {
  backend = "local"

  config = {
       path = "../Creating-EKS-Cluster-by-Terraform/terraform.tfstate"
    
    }
  }
  

