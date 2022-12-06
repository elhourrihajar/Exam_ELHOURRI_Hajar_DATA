resource "aws_instance" "ec2_vm" {
  ami           = "ami-02aeff1a953c5c2ff"
  instance_type = "t3.micro"
  key_name      = "hajar-el-hourri-key"
  tags = {
    Name = "Etudiant"
    Owner = "elorihajar@gmail.com"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"] 
}

# Default ec2 user is "ec2-user"
