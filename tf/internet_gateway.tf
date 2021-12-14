resource "aws_internet_gateway" "primary-igw" {
  vpc_id = aws_vpc.primary-vpc.id

  tags = {
    Name = "${var.app_name}-${var.environment}-igw"
  }
}
