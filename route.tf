resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.vpc.id
 	route {
   	 cidr_block = "0.0.0.0/0" 
  	 gateway_id = aws_internet_gateway.igw.id
   }
  tags = {
    Name = "Public_rtb"
  }
}







resource "aws_route_table_association" "rtb_associate" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.routetable.id
}


resource "aws_route_table" "routetable2" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "Private_rtb"
  }
}

resource "aws_route_table_association" "rtb_associate2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.routetable2.id
}
