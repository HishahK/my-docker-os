# How to Run a Virtual OS Environment with Docker

A simple project demonstrating how to build and run a custom Ubuntu environment using Docker and Docker Compose. This setup provides a lightweight, interactive command-line interface based on the latest Ubuntu image, with `neofetch` pre-installed for system information display.

---

## Features

-   **Base OS**: Ubuntu (latest)
-   **Custom Tool**: `neofetch` is included in the build.
-   **Orchestration**: Managed via `docker-compose` for easy setup and execution.
-   **Interactive**: Runs an interactive `bash` shell directly inside the container.
-   **Clean**: The container is automatically removed on exit to keep your system tidy.

---

## Prerequisites

Before you begin, ensure you have the following installed on your system:

-   [Docker](https://www.docker.com/get-started)
-   [Docker Compose](https://docs.docker.com/compose/install/) (usually included with Docker Desktop)
-   [Git](https://git-scm.com/downloads)

---

## Getting Started

Follow these steps to build the image and run the container on your local machine.

### 1. Clone the Repository

First, clone this repository to your local machine:

```bash
git clone [https://github.com/HishahK/my-docker-os.git](https://github.com/HishahK/my-docker-os.git)
```

### 2. Navigate to the Project Directory

Change your current directory to the cloned project folder:

```bash
cd my-docker-os
```

### 3. Build and Run the Container

Use Docker Compose to build the image from the `Dockerfile` and run the service. This command will drop you directly into the container's shell.

```bash
docker-compose run --rm virtual-os
```

**Command Breakdown:**

-   `run`: Executes a one-time command against a service.
-   `--rm`: Automatically removes the container after it exits.
-   `virtual-os`: The name of the service defined in `docker-compose.yml`.

---

## Inside the Container

Once the container is running, you will see a new shell prompt, like `root@<container_id>:/#`.

To verify that you are inside the custom-built environment, run the pre-installed `neofetch` command:

```bash
neofetch
```

This will display a colorful system information screen with the Ubuntu logo.

To exit the container and return to your host terminal, simply type:

```bash
exit
```

---

## File Structure

-   **`Dockerfile`**: The blueprint for our Docker image. It starts from a base `ubuntu` image, updates its packages, installs `neofetch`, and sets the default command to `bash`.
-   **`docker-compose.yml`**: Defines how to run our container, including the build context and interactive mode settings.
-   **`.gitignore`**: Tells Git which files and folders to ignore, keeping the repository clean.

---

*This project serves as a basic template for creating and managing custom development environments with Docker.*
