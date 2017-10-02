terraform-aws-sg/docker-swarm
=============================

A Terraform security group module for docker_hosts that supports swarm masters and https traffic


Ports
-----
- TCP 443 (HTTPS)
- TCP 22 (SSH)
- TCP (2376) (Docker)
- TCP (3376) (Swarm)

Input Variables
---------------

- `security_group_name` - The name for your security group, e.g. `bluffdale_web_stage1`
- `vpc_id` - The VPC this security group should be created in.
- `source_cidr_block` - The source CIDR block, defaults to `0.0.0.0/0`
   for this module.

Usage
-----

You can use these in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. `main.tf`

```
module "sg_cluster" {
  source = "github.com/feedyard/terraform-aws-sg//docker-swarm"
  security_group_name = "${var.security_group_name}"
  vpc_id = "${var.vpc_id}"
  source_cidr_block = "${var.source_cidr_block}"
}
```

2. Setting values for the following variables, either through `terraform.tfvars` or `-var` arguments on the CLI

- security_group_name
- vpc_id
- source_cidr_block