terraform {
  required_version = ">= 0.13"
  required_providers {
    kind = {
      source  = "gimtonic/yandex-kind"
     # version = "~> 0.0.19"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "default" {
  name = "new-cluster"
  wait_for_ready = true
  kind_config {
    kind = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"
    }

    node {
      role = "worker"
    }

    node {
      role = "worker"
    }
  }
}

