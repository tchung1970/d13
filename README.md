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
- **Architecture**: `linux/amd64`
- **Size**: ~57 MB
- **Included Packages**: 
  - `ca-certificates`
  - `curl`
  - `wget`  
  - `tzdata`
- **Environment**:
  - `DEBIAN_FRONTEND=noninteractive`
  - `TZ=Etc/UTC`
  - `LANG=C.UTF-8`

## Automated Builds

This image is automatically built and updated via GitHub Actions whenever changes are pushed to the main branch.

- **Source**: https://github.com/tchung1970/d13
- **Build System**: GitHub Actions
- **Registry**: Docker Hub

## Usage Examples

### Basic Usage
```bash
docker run tchung1970/d13:latest echo "Hello from Debian 13!"
```

### Development Environment
```bash
docker run -it -v $(pwd):/app -w /app tchung1970/d13:latest bash
```

### Installing Additional Packages
```bash
docker run -it tchung1970/d13:latest bash -c "
  apt-get update && 
  apt-get install -y python3 python3-pip &&
  python3 --version
"
```

## Contributing

1. Fork the repository
2. Make your changes
3. Test locally with `docker build -t d13 .`
4. Submit a pull request

## Author

**Thomas Chung**  
Created: September 5, 2025

## License

This project is open source and available under the MIT [LICENSE](LICENSE).