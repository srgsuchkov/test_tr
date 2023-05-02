resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone
  size              = var.ebs_volume_size

  tags = {
    Name = "ebs_volume"
  }
}

resource "aws_volume_attachment" "ebs_volume_attachment" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.ec2.id
}
