resource "aws_instance" "anuuuuuuuuuu-inst" {
  ami           = "ami-006d3995d3a6b963b"
  instance_type = "t2.micro"
  #key_name = "anuuuuuuuuuu"
  tags                         = {
        "Name" = "instanceterra"
    }
    user_data = <<-EOF
                  #!/bin/bash
                  sudo apt update -y
                  sudo apt-get install -y apache2
                  sudo systemctl start apache2
                  sudo systemctl enable apache2
                  sudo apt update
                EOF
}
