resource "aws_subnet" "subnet1" {
  cidr_block        = "10.0.1.0/24"
  vpc_id            = aws_vpc.vpc.id
  availability_zone = "ap-south-1a"
  tags = {
    Name = "Publicsubnet1"
  }
}

resource "aws_subnet" "subnet2" {
  cidr_block        = "10.0.0.0/24"
  vpc_id            = aws_vpc.vpc.id
  availability_zone = "ap-south-1b"
  tags = {
    Name = "PrivateSubnet1"
  }
}
