provider "aws" {
  region = var.region
}

/* create an elastic search domain */
resource "aws_elasticsearch_domain" "es" {
  domain_name           = var.domain_name
  elasticsearch_version = var.es_version

  cluster_config {
    instance_type = var.instance_type
    instance_count = var.instance_count
    dedicated_master_enabled = var.dedicated_master_enabled
    dedicated_master_count   = var.dedicated_master_count
    dedicated_master_type    = var.dedicated_master_type
    zone_awareness_enabled   = var.zone_awareness_enabled
  }

  ebs_options {
    ebs_enabled = var.ebs_volume_size > 0 ? true : false
    volume_size = var.ebs_volume_size
    volume_type = var.ebs_volume_type
    iops        = var.ebs_iops
  }

  node_to_node_encryption {
    enabled = var.node_to_node_encryption_enabled
  }

  snapshot_options {
    automated_snapshot_start_hour = var.automated_snapshot_start_hour
  }

  tags = {
    Domain = var.domain_name
  }
}

