# dev-setup-scripts

This repository contains scripts for automatically setting up a development environment on Linux. The scripts cover the installation of essential tools, programming languages, popular libraries, and system configuration.

## Contents

- [Installation](#installation)
- [Repository Structure](#repository-structure)
- [Setup Scripts](#setup-scripts)
  - [System](#system)
  - [Workspace (Optional)](#workspace-optional)
  - [Programming Languages](#programming-languages)
  - [Libraries](#libraries)
- [Verification](#verification)
- [Contributing](#contributing)

## Installation

To start setting up your development environment, follow these steps:

1. Clone this repository to your local machine:
    ```bash
    git clone https://github.com/your_username/dev-setup-scripts.git
    cd dev-setup-scripts
    ```

2. Ensure all scripts have execution permissions:
    ```bash
    chmod +x setup.sh
    ```

3. Run the main setup script:
    ```bash
    ./setup.sh
    ```

## Repository Structure

```plaintext
dev-setup-scripts/
│
├── README.md
├── git/
│   └── setup.sh
├── languages/
│   ├── cpp-c/
│   │   ├── install_c_cpp_tools.sh
│   │   ├── install_cmake.sh
│   │   └── setup.sh
│   ├── go/
│   │   ├── configure_go.sh
│   │   ├── install_go.sh
│   │   └── setup.sh
│   ├── java/
│   │   ├── configure_java.sh
│   │   ├── install_java.sh
│   │   └── setup.sh
│   ├── node/
│   │   ├── install_node.sh
│   │   └── setup.sh
│   └── python/
│       ├── install_python.sh
│       └── setup.sh
├── libraries/
│   ├── install_cuda_wsl.sh
│   └── setup_opencv.sh
├── system/
│   ├── install_prerequisites.sh
│   ├── setup.sh
│   └── update_system.sh
├── workspace/
│   ├── create_language_dirs.sh
│   ├── create_workspace.sh
│   └── setup.sh
└── setup.sh
```

## Setup Scripts

### System

1. **System Update**: Updates and upgrades the system.
    ```bash
    ./system/update_system.sh
    ```

2. **Install Prerequisites**: Installs basic tools needed for development.
    ```bash
    ./system/install_prerequisites.sh
    ```

### Workspace (Optional)

1. **Create Workspace**: Creates the main workspace directory and subdirectories for each programming language.
    ```bash
    ./workspace/setup.sh
    ```

### Programming Languages

1. **C/C++**: Installs essential tools and `cmake` for C/C++ development.
    ```bash
    ./languages/cpp-c/setup.sh
    ```

2. **Go**: Installs Go and configures the environment.
    ```bash
    ./languages/go/setup.sh
    ```

3. **Java**: Installs Java and configures the environment.
    ```bash
    ./languages/java/setup.sh
    ```

4. **Node.js**: Installs Node.js.
    ```bash
    ./languages/node/setup.sh
    ```

5. **Python**: Installs the latest version of Python 3.x.
    ```bash
    ./languages/python/setup.sh
    ```

### Libraries

1. **CUDA for WSL**: Installs CUDA toolkit for WSL.
    ```bash
    ./libraries/install_cuda_wsl.sh
    ```

2. **OpenCV**: Installs OpenCV with additional contributions.
    ```bash
    ./libraries/setup_opencv.sh
    ```

## Verification

To verify that the installations were completed successfully, you can run verification commands included in some of the scripts. For example:

- **CUDA**:
    ```bash
    nvcc --version
    nvidia-smi
    ```

- **OpenCV**:
    ```bash
    pkg-config --modversion opencv4
    python3 -c "import cv2; print('OpenCV version:', cv2.__version__)"
    ```

## Contributing

Contributions are welcome! If you want to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make the necessary changes and commit them (`git commit -am 'Add new feature'`).
4. Push your changes (`git push origin feature/new-feature`).
5. Create a Pull Request.


