output "rds_endpoint" {
  description = "RDS endpoint name"
  value       = aws_db_instance.default.endpoint
}