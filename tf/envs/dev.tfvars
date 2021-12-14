app_name            = "app"
profile             = "aws-app-profile"
region              = "us-east-1"
environment         = "dev"
app_service_number  = "ABC1234567890"
business_app_number = "XYZ1234567890"

availability_zones = ["us-east-1a", "us-east-1b"]

vpc_cidr_block       = "10.20.0.0/16"
private_subnet_cidrs = ["10.20.0.0/25", "10.20.0.128/25"]
public_subnet_cidrs  = ["10.20.1.0/25", "10.20.1.128/25"]
