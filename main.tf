provider "aws" {
  region = var.region
}

data "aws_ssm_parameter" "amz_linux" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"

}

resource "aws_instance" "cathay_module_example" {
  ami = data.aws_ssm_parameter.amz_linux.value

  instance_type     = var.instance_type
  availability_zone = var.instance_az
  count             = var.instance_count

  tags = {
    Name = var.server_name
  }
}
