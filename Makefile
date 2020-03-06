# Set Help, default goal and WATCHTOWER_BASE
include help.mk

# Name of the project and docker image
NAME  := forkbacon

# OCI Metadata
IMAGE_TITLE             := Keep Forks in Sync
IMAGE_DESC              := GitHub Action to keep minimally modified forks in sync
IMAGE_URL               := https://hub.docker.com/r/shitiomatic/forkbacon
IMAGE_SOURCE            := https://github.com/shitiomatic/forkbacon
IMAGE_LICENSES          := MIT
IMAGE_DOCUMENTATION     := https://github.com/shitiomatic/forkbacon

# Relative to
DOCKER_CONTEXT_DIR := $(WATCHTOWER_BASE)/src

include docker.mk

.PHONY: shellcheck
shellcheck: ## Runs the shellcheck.
	@echo -e "\033[92m➜ $@ \033[0m"
	shellcheck -e SC2036 $(ROOT_DIR)/src/entrypoint.sh
