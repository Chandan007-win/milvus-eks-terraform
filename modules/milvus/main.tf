resource "helm_release" "milvus" {
  name             = "milvus"
  namespace        = var.namespace
  create_namespace = true

  repository = "https://zilliztech.github.io/milvus-helm/"
  chart      = "milvus"
  version    = "4.1.8"

  values = [
    file("${path.module}/values.yaml")
  ]
}

