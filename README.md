terraform-aws-sg
================
Group of common AWS security group definitions

Security Group Catalog
----------------------

This module contains the following security group templates for you to use as modules in service Terraform templates.

- [sg_docker_swarm](https://github.com/feedyard/tfcm_aws_sg/tree/master/sg_docker_swarm) - This is a security group for externally accessible docker hosts/swarm
    - It allows incoming TCP 443 (HTTPS), TCP 22 (SSH), TCP 2376 (Docker), TCP 3376 (Swarm)
    

Usage
------
