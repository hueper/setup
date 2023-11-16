# Setup

This repository contains a setup script (`setup.sh`) designed to automate the installation of essential development tools and packages on a Debian-based system. The script is particularly useful for setting up a development environment quickly.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/hueper/setup.git
    cd setup
    ```

2. Execute the setup script:

    ```bash
    chmod +x setup.sh
    sudo ./setup.sh
    ```

3. Follow the on-screen prompts, if any, and wait for the installation process to complete.

## Script Overview

The `setup.sh` script performs the following tasks:

- Updates and upgrades system packages.
- Installs essential packages including `git`, `tree`, `atop`, `python3-pip`, `nodejs`, `npm`, and more.
- Adds the Docker GPG key and repository for Docker installation.
- Installs Docker and its related components.
- Installs Yarn using npm.
- Upgrades Node.js using the `n` module from npm.
- Performs additional cleanup to free up space.

## Notes

- The script assumes a Debian-based system.
- Ensure that you have sudo privileges to execute the script.
- Review the script and make any necessary adjustments based on your requirements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Note:** Please be cautious while running scripts from the internet. It's recommended to review and understand the script contents before execution.
