resource "aws_vpc" "create_vpc" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "Teste-with-tf"
  }
}
