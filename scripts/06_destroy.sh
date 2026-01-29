#!/usr/bin/env bash
set -e
ENV="${1:-dev}"
terraform destroy -auto-approve -var-file="envs/${ENV}/terraform.tfvars"

