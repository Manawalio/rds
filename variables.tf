variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to allocate for the database."
  type        = number
  default     = 20
}

variable "storage_type" {
  description = "The type of storage to use for the database instance."
  type        = string
  default     = "gp2"
}

variable "db_engine" {
  description = "The name of the database engine to use."
  type        = string
  default     = "postgres"
}

variable "db_engine_version" {
  description = "The version of the database engine to use."
  type        = string
  default     = "16.0"
}

variable "instance_class" {
  description = "The instance type to use for the database instance."
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database to create."
  type        = string
  default     = "postgresdb"
}

variable "db_username" {
  description = "The username for the database."
  type        = string
}

variable "db_password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The name of the DB parameter group to associate with the database instance."
  type        = string
  default     = "default.postgres16.0"
}

variable "backup_retention_period" {
  description = "The number of days to retain backups for."
  type        = number
  default     = 7
}

variable "multi_az" {
  description = "Specifies if the DB instance is a Multi-AZ deployment."
  type        = bool
  default     = false
}

variable "publicly_accessible" {
  description = "Specifies whether the database instance is publicly accessible."
  type        = bool
  default     = false
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the DB instance."
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the DB subnet group."
  type        = list(string)
}

variable "backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  type        = string
  default     = "03:00-06:00"
}

variable "maintenance_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  type        = string
  default     = "Sun:05:00-Sun:09:00"
}
