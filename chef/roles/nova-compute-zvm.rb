name "nova-compute-zvm"
description "Installs requirements to run a Compute node in a Nova cluster"
run_list("recipe[nova::role_nova_compute_zvm]")
