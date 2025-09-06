# Debian 13 = "trixie"
# You can swap to "debian:trixie-slim" if you want smaller base
FROM debian:trixie

# Noninteractive apt in CI
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Etc/UTC \
    LANG=C.UTF-8

# Basic updates + useful tools (keep lean)
RUN apt-get update && \
    apt-get -y --no-install-recommends install \
      ca-certificates curl wget tzdata lsb-release && \
    rm -rf /var/lib/apt/lists/*

# Default command
CMD ["bash"]