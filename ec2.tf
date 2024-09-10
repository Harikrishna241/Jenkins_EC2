#for ec2 instance main requirments are 
# Security group 
# AMI
#Instanc type 
resource "aws_instance" "Prod" {
    for_each = var.instance_names
    ami = each.value
    instance_type = "t3.medium"
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags = merge(var.tag_info,{
        Name = "${each.key}"
        module = "${each.key}"
        })
}

resource "aws_security_group" "sg" { 
    name = "Sg"
    tags={
        name="sg"
        createdby="Hari krishna"
    }
    ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
}