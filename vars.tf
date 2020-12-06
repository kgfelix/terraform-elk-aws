variable region {
  type = string
  default     = "sa-east-1"
  description = "Main region"
}

variable domain_name {
  type = string
  default = "default"
  description = "elasticsearch domain name"
}

variable es_version {
  default = 2.3
}

/* cluster configuration variables */

variable instance_type {
  type = string
  default = "t2.micro.elasticsearch"
}

variable instance_count {
  type = number
  default = 1
  description = "number of nodes in the cluster"
}

variable dedicated_master_enabled {
  type        = bool
  default     = false
  description = "master nodes are enabled for the cluster"
}

variable dedicated_master_count {
  type = number
  default = 0
  description = "number of dedicated master nodes"
}

variable dedicated_master_type {
  type        = string
  default     = "t2.micro.elasticsearch"
  description = "instance type of the dedicated master nodes"
}

variable zone_awareness_enabled {
  type        = bool
  default     = false
  description = "enable zone awareness for elasticsearch cluster"
}
/*
variable availability_zone_count {
  type        = number
  default     = 2
  description = "number of AZ for the domain to use"
}*/

variable node_to_node_encryption_enabled {
  type        = bool
  default     = false
  description = "enable node-to-node encryption"
}


/* EBS variables */
variable ebs_volume_size {
  type = number
  default = 10
  description = "EBS volumes in GB"  
}

variable "ebs_volume_type" {
  type = string
  default = "gp2"
  description = "Storage type"
}

variable "ebs_iops" {
  type        = number
  default     = 0
  description = "IOPS baseline input/output (I/O) performance"
}

variable automated_snapshot_start_hour {
  type        = number
  description = "hour at which automated snapshots are taken, in UTC"
  default     = 23
}

/*
 + access_policies       = (known after apply)
      + advanced_options      = (known after apply)
      + arn                   = (known after apply)
      + domain_id             = (known after apply)
      + domain_name           = "default"
      + elasticsearch_version = "7.7"
      + endpoint              = (known after apply)
      + id                    = (known after apply)
      + kibana_endpoint       = (known after apply)

*/