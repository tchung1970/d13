# d13 - Debian 13 (trixie) Docker Image

A minimal Debian 13 ("trixie") base image, automatically built via GitHub Actions and pushed to Docker Hub.

## Docker Hub Repository

- **Repository**: [`tchung1970/d13`](https://hub.docker.com/r/tchung1970/d13)
- **Available Tags**: `latest`, `13`, `trixie`

## Quick Start

```bash
# Pull the latest image
docker pull tchung1970/d13:latest

# Run interactively
docker run -it --rm tchung1970/d13:latest bash

# Run with volume mount
docker run -it --rm -v $(pwd):/workspace tchung1970/d13:latest bash
```

## Available Tags

| Tag | Description | 
|-----|-------------|
| `latest` | Latest Debian 13 build |
| `13` | Debian 13 specific tag |
| `trixie` | Debian codename specific tag |

## Image Details

- **Base Image**: `debian:trixie`
- **Architecture**: `linux/amd64`, `linux/arm64`
- **Size**: ~57 MB
- **Included Packages**: 
  - `ca-certificates`
  - `curl`
  - `wget`  
  - `tzdata`
  - `lsb-release`
  - `sudo`
- **Environment**:
  - `DEBIAN_FRONTEND=noninteractive`
  - `TZ=Etc/UTC`
  - `LANG=C.UTF-8`
- **Security**: Runs as non-root user `debian` with sudo access

## Automated Builds

This image is automatically built and updated via GitHub Actions whenever changes are pushed to the main branch.

- **Source**: https://github.com/tchung1970/d13
- **Build System**: GitHub Actions
- **Registry**: Docker Hub
- **Supply Chain**: Includes provenance attestations and SBOM for security

## Usage Examples

### Basic Usage
```bash
docker run tchung1970/d13:latest echo 'Hello from Debian 13!'
```

### Check Debian Version
```bash
docker run tchung1970/d13:latest lsb_release -d
```

### Development Environment
```bash
docker run -it -v $(pwd):/app -w /app tchung1970/d13:latest bash
```



## Author

**Thomas Chung**  
Created: September 5, 2025

## License

This project is open source and available under the MIT [LICENSE](LICENSE).