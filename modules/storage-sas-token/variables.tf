variable "connection_string" {
  type = string
}
variable "https_only" {
  type = bool
}
variable "signed_version" {
  type = string
}

# Resource Types
variable "service" {
  type = bool
}
variable "container" {
  type = bool
}
variable "object" {
  type = bool
}

# Services
variable "blob" {
  type = bool
}
variable "queue" {
  type = bool
}
variable "table" {
  type = bool
}
variable "file" {
  type = bool
}

# SAS Token Validity Period
variable "start" {
  type = string
}
variable "expiry" {
  type = string
}

# Permissions
variable "read" {
  type = bool
}
variable "write" {
  type = bool
}
variable "delete" {
  type = bool
}
variable "list" {
  type = bool
}
variable "add" {
  type = bool
}
variable "create" {
  type = bool
}
variable "update" {
  type = bool
}
variable "process" {
  type = bool
}
variable "tag" {
  type = bool
}
variable "filter" {
  type = bool
}
