resource "aws_instance" "web" {
    for_each=var.ec2_map
  ami           = each.value.ami
  instance_type = each.value.ins_type

  tags = {
    Name = each.value.name
    Owner = each.value.owner
  }
  volume_tags = {
    Name = each.value.name
    Owner = each.value.owner
  }
}