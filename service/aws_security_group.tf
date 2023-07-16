resource "aws_security_group" "instance" {
    name = "instance"
    description = "This is security group for instance"
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}