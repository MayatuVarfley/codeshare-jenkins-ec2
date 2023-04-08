variable "ami" {
  default     = "ami-0fa1de1d60de6a97e"
  description = "ami info"
  type        = string

}

variable "instance_type" {
  default = "t2.micro"
}

variable "env" {
  default = "dev"

}
variable "instance-name" {
  default = "Jenkins-server"

}
variable "Team" {
  default = "Group1"

}