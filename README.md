cat > README.md <<'EOF'
# Milvus on EKS using Terraform

This repo provisions:
- VPC + EKS (managed node group)
- IRSA
- EBS CSI driver (dynamic PVC provisioning)
- Milvus installed via Helm (Zilliz Milvus Helm repo)

## Prerequisites
- Terraform >= 1.5
- AWS CLI configured (`aws sts get-caller-identity` should work)
- kubectl
- (Optional) helm

## Deploy (dev example)
```bash
cd envs/dev
terraform init
terraform plan -var-file=dev.tfvars -out=tfplan
terraform apply tfplan
