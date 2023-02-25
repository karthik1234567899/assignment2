provider "aws"{
    region = "us-west-2"
    access_key = "AKIA6RPJFY3HBUDTF6FW"
    secret_key = "aTw68qRgLAtKqlPSQQns2VVrKGbIg3KOso+9mo/b"
}
resource "aws_instance" "example" {
   ami = "ami-0735c191cf914754d"
    instance_type = "t2.micro"
     root_block_device {
        delete_on_termination = true
        encrypted             = false
        iops                  = 100
        volume_size           = 8
        volume_type           = "gp2"
        tags = {
          "key" = "terraform"
        }
}
}




