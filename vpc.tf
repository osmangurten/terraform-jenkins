
resource "aws_vpc" "jenkins_vpc" {
  #count            = "${terraform.workspace == "dev" ? 2 : 1}"
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name        = "JENKINS"
    Environment = "${var.tag_name}"
  }
}
