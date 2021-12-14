resource "aws_route_table" "public-rtb" {
  vpc_id = aws_vpc.primary-vpc.id

  route {
    cidr_block                = "0.0.0.0/0"
    egress_only_gateway_id    = ""
    gateway_id                = aws_internet_gateway.primary-igw.id
    instance_id               = ""
    nat_gateway_id            = ""
    network_interface_id      = ""
    transit_gateway_id        = ""
    vpc_peering_connection_id = ""
  }
  tags = {
    Name = "${var.app_name}-${var.environment}-public-rtb"
  }
}

resource "aws_route_table" "private-rtb-a" {
  vpc_id = aws_vpc.primary-vpc.id
  route  = []
  tags = {
    Name = "${var.app_name}-${var.environment}-private-rtb-a"
  }
}
resource "aws_route_table" "private-rtb-b" {
  vpc_id = aws_vpc.primary-vpc.id
  route  = []
  tags = {
    Name = "${var.app_name}-${var.environment}-private-rtb-b"
  }
}

resource "aws_route_table_association" "public-a" {
  subnet_id      = aws_subnet.public-subnet-a.id
  route_table_id = aws_route_table.public-rtb.id
}

resource "aws_route_table_association" "public-b" {
  subnet_id      = aws_subnet.public-subnet-b.id
  route_table_id = aws_route_table.public-rtb.id
}

resource "aws_route_table_association" "private-a" {
  subnet_id      = aws_subnet.private-subnet-a.id
  route_table_id = aws_route_table.private-rtb-a.id
}

resource "aws_route_table_association" "private-b" {
  subnet_id      = aws_subnet.private-subnet-b.id
  route_table_id = aws_route_table.private-rtb-b.id
}
