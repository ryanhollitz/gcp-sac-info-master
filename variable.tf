/*
/---------------------------------------\
| Terraform github actions demo - GCP   |
|---------------------------------------|
| Author: Mike Winslow                  |
| E-mail: michael.winslow@broadcom.com  |
\---------------------------------------/
*/
//Variables

variable "project_name" {
  //type        = "string"
  description = "The name of the project to instantiate the instance at."
  default     = "demos-sed-security-hollitz"
}

variable "region_name" {
  //type        = "string"
  description = "The region that this terraform configuration will instantiate at."
  default     = "us-east4"
}

variable "zone_name" {
  //type        = "string"
  description = "The zone that this terraform configuration will instantiate at."
  default     = "us-east4-c"
}

variable "machine_size" {
  //type        = "string"
  description = "The size that this instance will be."
  //default     = "f1-micro"
  default     = "e2-medium"
}

variable "image_name" {
  //type        = "string"
  description = "The kind of VM this instance will become"
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "network" {
  description = "The name of the subnetwork create this instance in."
  default     = "rh-isg-sac-dev"
}

variable "subnetwork" {
  description = "The name of the subnetwork create this instance in."
  default     = "rh-isg-sac-dev"
}

variable "tags" {
  type        = list(string)
  default     = ["cicd-deny-ext","cicd-allow-int"]
  description = "Network tags, provided as a list"
}

// Secure Access Cloud
variable "tenant_domain" {
  default = "symcrhollitz.luminatesite.com"
}
variable "luminate_user" {
  //type        = list(string)
  default = "ryan.hollitz@symcrhollitz.luminatesite.com"
}
//variable "luminate_group" {
  //default = "Developers"
  //default = "Developer"
//}

// GitHub
variable "git_repo" {
  default = ""
}
variable "git_branch" {
  default = ""
}
