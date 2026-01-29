#!/usr/bin/env bash
set -e
ENV="${1:-dev}"
terraform plan -var-file="envs/${ENV}/terraform.tfvars" -out tfplan
