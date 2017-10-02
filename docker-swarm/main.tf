// Security Group Resource for Module
resource "aws_security_group" "main_security_group" {
  name = "${var.security_group_name}"
  description = "Security Group ${var.security_group_name}"
  vpc_id = "${var.vpc_id}"


  // allow traffic to web services running on hosts
  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
  }

  // gocd server
  ingress {
    from_port = 8153
    to_port = 8153
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
  }

  ingress {
    from_port = 8154
    to_port = 8154
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
  }

  // docker/docker-swarm communication
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
    self = true
  }

  ingress {
    from_port = 2376
    to_port = 2376
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
    self = true
  }

  ingress {
    from_port = 3376
    to_port = 3376
    protocol = "tcp"
    cidr_blocks = ["${var.source_cidr_block}"]
    self = true
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = "${merge(var.tags, map("Name", format("%s", var.security_group_name)))}"

}