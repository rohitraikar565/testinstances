policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-and-percentage-increase.sentinel"
    enforcement_level = "advisory"
}

policy "limit-proposed-monthly-cost" {
    source = "./limit-proposed-monthly-cost.sentinel"
    enforcement_level = "advisory"
}

policy "restrict-gce-machine-type" {
    source = "./restrict-gce-machine-type.sentinel"
    enforcement_level = "advisory"
}
