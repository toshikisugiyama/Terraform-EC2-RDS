# Provides an EC2 instance resource.
resource "aws_instance" "web" {
  ami = data.aws_ssm_parameter.amzn2_ami.value
  instance_type = "t2.micro"
  associate_public_ip_address = true
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.instance.id]
  key_name = "${var.app}-key"
  tags = { Name = var.app }
}
# Provides an SSM Parameter data source.
data "aws_ssm_parameter" "amzn2_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}