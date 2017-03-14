This Terraform template provisions a node on AWS along with a security
group that allows access to port 80. All variables are initialized in
variables.tf (many of them have default values). Variable assignment
takes place in terraform.tfvars (the values for "region" and "ami" must
be assigned here since they do not have default values). Please note that
the access_key and secret_key values are being pulled from the environment
variables.

To undertand more about input variables in Terraform, please visit
https://www.terraform.io/intro/getting-started/variables.html

