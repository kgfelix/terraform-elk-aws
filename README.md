## About The Project

An example of ELK stack using Terraform.


## Prerequisites

* [Install and configure Terraform] (https://learn.hashicorp.com/tutorials/terraform/install-cli)


* Create a new workspace
  ```
  terraform workspace new [NAME]
  ```
* Or use a workspace already created:
```
terraform workspace select [NAME]
``` 

## Installation

1. Clone the repo;
2. Initialize a working directory containing Terraform configuration files:
   ```sh
   terraform init
   ```
3. Create an execution plan:
   ```sh
   terraform plan
   ```
4. Apply the changes:
   ```sh
   terraform apply
   ```
## Usage
.

## Destroying the infrastructure
   ```sh
   terraform destroy
   ```
   