# variable "ami_info" {
#   type = list
#   description = "this is the customize OS RHEL"
#   default = ["ami-041e2ea9402c46c32","ami-094293d2fb3fb982a",]
# }

variable "tag_info" {
  type = map
  description = "this is the customize OS RHEL"
  default = {
    Project = "adressbook"
    Environment = "Dev"
  }
}

variable "instance_names" {
    type = map
    description = "this is for the for each loop based "
    default = {
        sonarqube="ami-094293d2fb3fb982a"
        nexus = "ami-00062842173dd506a"
        Test = "ami-09c813fb71547fc4f"
    }
}