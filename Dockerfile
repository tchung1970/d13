# Debian 13 = "trixie"
# You can swap to "debian:trixie-slim" if you want smaller base
FROM debian:trixie

# Noninteractive apt in CI
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Etc/UTC \
    LANG=C.UTF-8

# Basic updates + useful tools (keep lean)
RUN apt-get update && \
    apt-get -y full-upgrade && \
    apt-get -y --no-install-recommends install \
      ca-certificates curl wget tzdata lsb-release sudo && \
    rm -rf /var/lib/apt/lists/*

# Create non-root user
RUN useradd -m -s /bin/bash -p '' -G sudo debian
USER debian
WORKDIR /home/debian

# Default command
CMD ["bash"]
