resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = var.availability_zone
  subnet_id              = aws_subnet.my_subnet.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  iam_instance_profile   = aws_iam_instance_profile.some_profile.id

  user_data = <<EOF
#!/usr/bin/env python3
with open('/tmp/numbers.txt', 'w') as file:
    for num in range(1, 101):
        file.write(str(num) + '\n')
EOF

  tags = {
    Name = var.name
    OS   = "Amazon Linux"
  }
}
