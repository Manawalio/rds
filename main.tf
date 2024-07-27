resource "aws_db_instance" "example" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name
  backup_retention_period = var.backup_retention_period
  multi_az             = var.multi_az
  publicly_accessible  = var.publicly_accessible

  tags = {
    Name = var.db_instance_name
  }

  # Optionally configure security groups and subnet groups
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name

  # Optionally configure backup and maintenance settings
  backup_window          = var.backup_window
  maintenance_window     = var.maintenance_window
}

resource "aws_db_subnet_group" "example" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = {
    Name = var.db_subnet_group_name
  }
}
