variable "ami_info" {
  type = list
  description = "this is the customize OS RHEL"
  default = ["ami-041e2ea9402c46c32"]
}

variable "tag_info" {
  type = map
  description = "this is the customize OS RHEL"
  default = {
    Project = "Expense"
    Environment = "Dev"
  }
}

variable "instance_names" {
    type = map
    description = "this is for the for each loop based "
    default = {
        sonarqube="t2.micro"
        nexus = "t2.micro"
        Test = "t3.micro"
    }
}