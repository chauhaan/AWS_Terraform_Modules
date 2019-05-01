locals {
  bbu_private_webserver_id                  = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.id, aws_instance.bbu_private_webserver_t2.*.id), list("")))}"
  bbu_private_webserver_availability_zone   = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.availability_zone, aws_instance.bbu_private_webserver_t2.*.availability_zone), list("")))}"
  bbu_private_webserver_key_name            = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.key_name, aws_instance.bbu_private_webserver_t2.*.key_name), list("")))}"
  bbu_private_webserver_public_dns                   = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.public_dns, aws_instance.bbu_private_webserver_t2.*.public_dns), list("")))}"
  bbu_private_webserver_public_ip                    = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.public_ip, aws_instance.bbu_private_webserver_t2.*.public_ip), list("")))}"
  bbu_private_webserver_primary_network_interface_id = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.primary_network_interface_id, aws_instance.bbu_private_webserver_t2.*.primary_network_interface_id), list("")))}"
  bbu_private_webserver_private_dns                  = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.private_dns, aws_instance.bbu_private_webserver_t2.*.private_dns), list("")))}"
  bbu_private_webserver_private_ip                   = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.private_ip, aws_instance.bbu_private_webserver_t2.*.private_ip), list("")))}"
  bbu_private_webserver_security_groups              = "${compact(concat(coalescelist(flatten(aws_instance.bbu_private_webserver.*.security_groups), flatten(aws_instance.bbu_private_webserver_t2.*.security_groups)), list("")))}"
  bbu_private_webserver_vpc_security_group_ids       = "${compact(concat(coalescelist(flatten(aws_instance.bbu_private_webserver.*.vpc_security_group_ids), flatten(aws_instance.bbu_private_webserver_t2.*.vpc_security_group_ids)), list("")))}"
  bbu_private_webserver_subnet_id                    = "${compact(concat(coalescelist(aws_instance.bbu_private_webserver.*.subnet_id, aws_instance.bbu_private_webserver_t2.*.subnet_id), list("")))}"
  bbu_private_webserver_credit_specification         = "${aws_instance.bbu_private_webserver_t2.*.credit_specification}"
  bbu_private_webserver_tags                         = "${coalescelist(flatten(aws_instance.bbu_private_webserver.*.tags), flatten(aws_instance.bbu_private_webserver_t2.*.tags))}"
}

output "id" {
  description = "List of IDs of instances"
  value       = ["${local.bbu_private_webserver_id}"]
}
output "availability_zone" {
  description = "List of availability zones of instances"
  value       = ["${local.bbu_private_webserver_availability_zone}"]
}
output "key_name" {
  description = "List of key names of instances"
  value       = ["${local.bbu_private_webserver_key_name}"]
}
output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = ["${local.bbu_private_webserver_public_dns}"]
}
output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = ["${local.bbu_private_webserver_public_ip}"]
}
output "primary_network_interface_id" {
  description = "List of IDs of the primary network interface of instances"
  value       = ["${local.bbu_private_webserver_primary_network_interface_id}"]
}
output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = ["${local.bbu_private_webserver_private_dns}"]
}
output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = ["${local.bbu_private_webserver_private_ip}"]
}
output "security_groups" {
  description = "List of associated security groups of instances"
  value       = ["${local.bbu_private_webserver_security_groups}"]
}
output "vpc_security_group_ids" {
  description = "List of associated security groups of instances, if running in non-default VPC"
  value       = ["${local.bbu_private_webserver_vpc_security_group_ids}"]
}
output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = ["${local.bbu_private_webserver_subnet_id}"]
}
output "credit_specification" {
  description = "List of credit specification of instances"
  value       = ["${local.bbu_private_webserver_credit_specification}"]
}
output "tags" {
  description = "List of tags of instances"
  value       = ["${local.bbu_private_webserver_tags}"]
}