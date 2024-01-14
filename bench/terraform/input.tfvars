project               = "-test"
service_account_email = "sa@test.iam.gserviceaccount.com"
gcp_user              = "user"

world_reachable_protocol_port_map = {
  "tcp" = "22,2181,9092,2888,3888"
}

configuration = [
  {
    name  = "kafka"
    count = 3
    labels = {
      "role" = ["zookeeper-nodes", "kafka-nodes"]
    }
    machine_type = "e2-standard-4"
    image        = "ubuntu-minimal-2004-focal-v20230427"
    tags = ["zookeeper", "kafka", "allow-internal"]
    disk = {
      size = 80,
      type = "pd-ssd",
      name = "kafka-disk"
    }
  },
  {
    name  = "data-sender"
    count = 1
    labels = {
      "role" = ["data-sender"]
    }
    machine_type = "e2-standard-8"
    image        = "ubuntu-minimal-2004-focal-v20230427"
    tags = ["allow-internal"]
  }
]
