resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags = {
    Name = "hcb-bank-vpc"
  }
}

resource "aws_subnet" "subnet" {
  count = length(var.subnets)

  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "hcb-bank-subnet-${count.index}"
  }
}
