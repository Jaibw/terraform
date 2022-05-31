provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "yourname" {
  ami = "ami-0add1785eac72fc1a"
  instance_type = "t2.micro"
  key_name = "jai-wsl2-key"
  security_groups = ["website-demo"]
  tags = {
    Name = "yourname"
  }

}

output "yourname" {
  value = "${aws_instance.jai.public_ip}"
}
