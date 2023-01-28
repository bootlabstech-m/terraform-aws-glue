resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
  name          = var.glue_name
  database_name = aws_glue_catalog_database.catalog_database.name
}
resource "aws_glue_catalog_database" "catalog_database" {
  name = var.database_name
}
resource "aws_glue_connection" "glue_connection" {
  connection_properties = {
    JDBC_CONNECTION_URL = var.jdbc_connection_url
    PASSWORD            = var.password
    USERNAME            = var.username
  }
  name = var.glue_connection_name
}