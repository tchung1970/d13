# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Docker project containing a Debian 13 ("trixie") base image configuration.

## Docker Commands

- **Build image**: `docker build -t d13 .`
- **Run container**: `docker run -it d13`
- **Run with volume mount**: `docker run -it -v $(pwd):/workspace d13`

## Image Details

- Base: `debian:trixie` (Debian 13)
- Includes: ca-certificates, curl, wget, tzdata
- Environment: Non-interactive apt, UTC timezone, UTF-8 locale
- Default command: bash shell