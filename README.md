# 🐳 cont-proftpd

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A lightweight Podman container running ProFTPD for development and testing purposes.

## 📋 Overview

This container provides a simple ProFTPD server environment, primarily intended for testing FTP-related projects and development work. **Note: This is not designed for production use.**

## ✨ Features

- Simple, lightweight ProFTPD container
- Pre-configured FTP user account
- Easy setup and configuration
- Ideal for development and testing environments

## 🛠️ Requirements

- Podman installed on your system
- Root privileges for running the container

## 🚀 Getting Started

The following actions should be performed as root.

### Building the Container

Run the build script from the project root:

```bash
./build
```

This script will:
1. Stop and remove any existing proftpd container
2. Build a fresh proftpd container
3. Create a default FTP user account (`ftpuser`) with password `password`

### Running the Container

Execute the run script from the project root:

```bash
./runftp
```

This will:
1. Create a `rootdir` directory in your project folder if it doesn't already exist.
2. Set up the ProFTPD configuration and log files
3. Create an FTP directory that serves as the root for FTP sessions
4. Start the container

## 📂 Directory Structure

After running the container, you'll find:

```
rootdir/
├── proftpd.conf  # ProFTPD configuration file
├── proftpd.log   # Log file for the FTP server
└── ftp/          # Root directory for FTP sessions
```

## 🔌 Connecting to the FTP Server

Connect to the running container using your preferred FTP client. For command line:

```bash
ftp ftpuser@localhost
```

When prompted, use `password` as the password.

## 🔐 Default Credentials

- **Username:** ftpuser
- **Password:** password

## ⚠️ Security Notice

This container is designed for **testing purposes only**. Important security considerations:

- Default credentials are not secure
- Configuration is optimized for ease of use, not security
- Not suitable for production environments

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Contributing

Contributions, issues, and feature requests are welcome!
