variable "resource_group_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "interview_rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "app_insights_name" {
  type        = string
  default     = "App Insights"
  description = "App Insights."
}

variable "tags" {
  type        = string
  default     = "interview"
  description = "interview"
}

variable "sc_service_name" {
  type        = string
  default     = "interview-service"
  description = "interview-service"
}

variable "subscription" {
  type        = string
  default     = "805d2781-d81f-4f7f-a05b-5868f20e6794 "
  description = "805d2781-d81f-4f7f-a05b-5868f20e6794"
}

variable "azurespringcloudvnetrg" {
  type        = string
  default     = "805d2781-d81f-4f7f-a05b-5868f20e6794 "
  description = "805d2781-d81f-4f7f-a05b-5868f20e6794"
}

variable "sc_law_id" {
  type        = string
  default     = "lawid123"
  description = "lawid123"
}






