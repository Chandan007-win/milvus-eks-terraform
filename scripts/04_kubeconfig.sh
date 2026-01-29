#!/usr/bin/env bash
set -e
REGION="${1:-ap-south-1}"
CLUSTER_NAME="$(terraform output -raw cluster_name)"
aws eks update-kubeconfig --region "$REGION" --name "$CLUSTER_NAME"
kubectl get nodes

