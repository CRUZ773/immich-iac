variable "suffix" {
  description = "Suffix to append to all resource names (use your net ID)"
  type        = string
}

variable "key" {
  description = "Name of the SSH key pair registered on Chameleon"
  type        = string
}

variable "reservation" {
  description = "UUID of the Chameleon flavor reservation"
  type        = string
}
