# environment stage
variable "stage" {
  description = "Name of the environment. Supported are dev & prd"
  type        = string
  default     = "dev"

  validation {
    condition     = var.stage == "dev" || var.stage == "tst" || var.stage == "prd"
    error_message = "The name of the environment can only be \"dev\", \"tst\" and \"prd\"."
  }
}