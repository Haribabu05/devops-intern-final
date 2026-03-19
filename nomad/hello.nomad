job "hello" {
  datacenters = ["dc1"]

  group "app" {
    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-image"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
