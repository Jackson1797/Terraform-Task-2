resource "aws_instance" "task2" {
  ami = lookup(var.ami, terraform.workspace) 
  instance_type = var.instance_type
  tags = {
    "Name" = terraform.workspace
  }
  user_data = <<-EOF
#!/bin/bash
sudo apt-get update -y || sudo yum update -y
sudo apt-get install -y nginx || sudo yum install -y nginx
sudo systemctl start nginx || sudo service nginx start
sudo systemctl enable nginx || sudo chkconfig nginx on
EOF
   count=2
}