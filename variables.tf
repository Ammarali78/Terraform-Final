variable "aws-region" {
  type        = string
  default     = "us-east-1a"
}

variable "EC2_AMI" {
  description = "instance AMI"
  type        =  string
  default     = "ami-0e472ba40eb589f49"
}

variable "EC2_Name" {
  description = "instance-tag"
  type        = string
  default     = "EC2-instance-created-with-terraform"
}

variable "EC2_type" {
  description = "The instance type to be used"
  type        = string
  default     = "t2.micro"
}

variable "EC2_KeyName" {
  description = "The name of the SSH key to associate to the instance. Note that the key must exist already."
  type        = string
  default     = ""
}

variable "instance-associate-public-ip" {
  description = "Defines if the EC2 instance has a public IP address."
  type        = string
  default     = "true"
}

variable "user-data-script" {
  description = "The filepath to the user-data script, that is executed upon spinning up the instance"
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "The Name to apply to the VPC"
  type        = string
  default     = "VPC-created-with-terraform"
}

variable "vpc_cidr" {
  description = "The CIDR block to associate to the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_AZ" {
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_private" {
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_NAT" {
  type        = bool
  default     = false
}

variable "vpc_VPN" {
  type        = bool
  default     = false
}

