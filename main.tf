locals {
  azs_count = 2
  azs_names = data.aws_availability_zones.available.names
}
