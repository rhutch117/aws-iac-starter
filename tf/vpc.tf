resource "aws_vpc" "primary-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.app_name}-${var.environment}-vpc"
  }
}

resource "aws_subnet" "private-subnet-a" {
  vpc_id            = aws_vpc.primary-vpc.id
  cidr_block        = var.private_subnet_cidrs[0]
  availability_zone = var.availability_zones[0]
  tags = {
    Name = "${var.app_name}-${var.environment}-private.${var.availability_zones[0]}"
  }
}

resource "aws_subnet" "private-subnet-b" {
  vpc_id            = aws_vpc.primary-vpc.id
  cidr_block        = var.private_subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
  tags = {
    Name = "${var.app_name}-${var.environment}-private.${var.availability_zones[1]}"
  }
}

resource "aws_subnet" "public-subnet-a" {
  vpc_id            = aws_vpc.primary-vpc.id
  cidr_block        = var.public_subnet_cidrs[0]
  availability_zone = var.availability_zones[0]
  tags = {
    Name = "${var.app_name}-${var.environment}-public.${var.availability_zones[0]}"
  }
}

resource "aws_subnet" "public-subnet-b" {
  vpc_id            = aws_vpc.primary-vpc.id
  cidr_block        = var.public_subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
  tags = {
    Name = "${var.app_name}-${var.environment}-public.${var.availability_zones[1]}"
  }
}
