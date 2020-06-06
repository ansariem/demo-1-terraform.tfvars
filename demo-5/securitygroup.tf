data "aws_ip_ranges" "european_ec2" {
  regions  = ["eu-west-1"]#, "eu-central-1"]
  services = ["ec2"]
}

resource "aws_security_group" "from_europe" {
  name = "from_europe"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = data.aws_ip_ranges.european_ec2.cidr_blocks
    #cidr_blocks = slice(data.aws_ip_ranges.european_ec2.cidr_blocks, 0, 20) # allow only 20 IP rainges
  }
  tags = {
    CreateDate = data.aws_ip_ranges.european_ec2.create_date
    SyncToken  = data.aws_ip_ranges.european_ec2.sync_token
  }
}

