#!/usr/bin/env bash
set -e
ENV="${1:-dev}"
terraform workspace select "$ENV" 2>/dev/null || terraform workspace new "$ENV"
terraform init -reconfigure -backend-config=backend.hcl
terraform validate

