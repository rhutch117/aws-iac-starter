# aws-iac-starter

Starter template for an AWS project

This template include the basic networking setup for an AWS project using terraform for IaC. The project includes .tfvar files for running different environments. The resources created are free and should not result in any charges by AWS.

### Usage

1. Clone the repo
2. Update values in `envs/dev.tfvars` and add additional envs with `env.tfvars` naming convention
3. Run `terraform plan --var-file=envs/dev.tfvars` (or whichever env you wish to run)

### Gotchas

A new workspace should be created for each env. It is easy to forget to switch workspaces and because of this you should use something like Jenkins to handle builds. (You should be doing this anyway...)

### Resources

This project includes one large VPC to house all of your resources.

Within this VPC, there exists 4 subnets, 2 are private and 2 are public. A public and private subnet pair is located in AZ 1 and another pair is located in AZ 2. The public subnets contain a route table directing outbound traffic to an internet gateway.
