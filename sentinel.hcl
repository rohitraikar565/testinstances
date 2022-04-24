policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-percentage-increse.sentinel"
    enforcement_level = "advisory"
}

policy "limit-proposed-monthly-cost" {
    source = "./limit-monthly-proposed-cost.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-gce-machine-type" {
    source = "./restrict-gce-machinetype.sentinel"
    enforcement_level = "advisory"
}

policy "enforce-gce-labels" {
    source = "./gce-labels.sentinel"
    enforcement_level = "advisory"
}
policy "restrict-availability-zones" {
  source = "./restrict-availibility-zones.sentinel"
  enforcement_level = "advisory"
}
