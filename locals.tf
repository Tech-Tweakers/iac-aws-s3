locals {
  team         = lower(var.tags["team"])
  product      = lower(var.tags["product"])
  owner        = lower(var.tags["owner"])
  env          = lower(var.tags["env"])

  prefix = "tech-tweakers-${local.product}-${local.env}"
}