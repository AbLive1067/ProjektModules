#-------------------- Elastic IP --------------------
resource "aws_eip" "main" {
  count = var.create_nat_gateway ? 1 : 0
  domain = var.domain

}

resource "aws_nat_gateway" "main" {
  count         = var.create_nat_gateway ? length(aws_subnet.public) : 0
  allocation_id = aws_eip.main[0].id
  subnet_id     = aws_subnet.public[count.index].id
  depends_on = [aws_internet_gateway.main]

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-nat-gateway-${count.index}",
      Environment = var.environment,
      Owner       = var.owner,
      Application = var.application
    },
    var.tags
  )
}
