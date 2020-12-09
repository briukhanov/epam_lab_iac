# output "db_server_address" {
#   value = aws_db_instance.database_instance.address
# }
output "web_server_address" {
  value = aws_instance.web_instance.public_dns
}
#
# output "mysql_db_name" {
#   value = "${var.db_name}"
# }
#
# output "mysql_user" {
#   value = "${var.db_username}"
# }
#
# output "mysql_user_password" {
#   sensitive = true
#   value     = "${var.db_password}"
# }
#
# output "nginx_http_host" {
#   value = "${var.nginx_http_host}"
# }
#
# output "nginx_http_conf" {
#   value = "${var.nginx_http_conf}"
# }
#
# output "nginx_http_port" {
#   value = "${var.nginx_http_port}"
# }
