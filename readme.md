# Codesmith Development Environment

Codesmith is a containerized development environment that simplifies the development and execution of infrastructure as code, automation scripts, and application development. It has the following features,

- Built on Ubuntu 24.04 LTS
- Contains ZSH and P10K installed as a shell replacement
- SSH is installed as a service. It can be exposed using any custom port when the container is spun up.
- Contains the following binaries installed,
  - **Terraform** (Infrastructure as Code)
  - **Ansible** (Automation & Configuration Management)
  - **DotNet** (.NET Development Framework)
  - **PowerShell** (Task Automation & Configuration)
  - **OpenTofu** (Open-source alternative to Terraform)

## Running Codesmith as a Container

### Prerequisites

Ensure you have **Docker** or **Podman** installed on your system.

### Running with Docker

```sh
docker run -i -d -p 2222:22 ghcr.io/deepakavanthi/codesmith:latest
```

### Running with Podman

```sh
podman run -i -d -p 2222:22 ghcr.io/deepakavanthi/codesmith:latest
```

## License

Codesmith is **free** and **open-source** software under the **MIT License**. See the [LICENSE](LICENSE) file for more details.