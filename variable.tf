#define cidr block of vpc
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

#define cidr block for 1st subnet
variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}
#define cidr block for 2nd subnet
variable "subnet2_cidr" {
  default = "10.0.2.0/24"
}

#define cidr block for 3rd subnet
variable "subnet3_cidr" {
  default = "10.0.3.0/24"
}

#define cidr block for 4 subnet
variable "subnet4_cidr" {
  default = "10.0.4.0/24"
}
#define cidr block for 5 subnet
variable "subnet5_cidr" {
  default = "10.0.5.0/24"
}

#define cidr block for 6 subnet
variable "subnet6_cidr" {
  default = "10.0.6.0/24"
}
