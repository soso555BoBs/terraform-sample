resource "aws_security_group" "instance" {
    name = "instance"
    description = "This is security group for instance"
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        
        security_groups = [
            aws_security_group.alb.id
        ]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "alb" {
    name = "sample-service-alb"
    description = "This is security group for alb"
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "db" {
    name = "sample-db"
    description = "This is security group for db"
    vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "TCP"
        
        security_groups = [
            aws_security_group.instance.id
        ]
    }
}