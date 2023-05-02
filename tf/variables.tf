variable "name" {
  description = "Name to be used on EC2 instance created"
  type        = string
  default     = "ec2-example"
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-02396cdd13e9a1257"
}

variable "availability_zone" {
  description = "AZ to start the instance in"
  type        = string
  default     = "us-east-1a"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = "my_keys_pair"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = null
}

variable "ebs_volume_size" {
  description = "The size of the drive in GiBs"
  type        = number
  default     = 20
}

variable "s3_bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "tf-test-proj-ex"
}
