variable "ami_id" {
   description = "The ID of the AMI to use for the EC2 instance"
   type        = string
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
}  

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = false
}

variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2"]
}

variable "project_environment" {
  description = "project name and environment"
  type        = map(string)
  default     = {
    name      = "Terra-EC2"
  }
}

variable "profile_name" {
   description = "Instance type t2.micro"
   type        = string
   default     = "terraform-project-prod"
}