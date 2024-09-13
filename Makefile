PROJECT := guile-imgui

UNAME_S := $(shell uname -s)
UNAME_M := $(shell uname -m)

ENTRYPOINT := src/init.scm

CWD := $(shell pwd)
SOURCE_DIR := $(CWD)/src

INIT_SOURCES := $(wildcard src/*.scm)

SOURCES := $(wildcard src/$(PROJECT)/*.scm)

.ONESHELL:

##@ Setup
.PHONY: setup
setup: ## Detects the OS and runs the appropriate setup
ifeq ($(UNAME_S), Linux)
    ifeq ($(shell cat /etc/os-release | grep '^ID=' | cut -d'=' -f2), arch)
	$(MAKE) setup-arch
    else ifeq ($(shell cat /etc/os-release | grep '^ID=' | cut -d'=' -f2), fedora)
	$(MAKE) setup-fedora
    else ifeq ($(shell cat /etc/os-release | grep '^ID=' | cut -d'=' -f2), ubuntu)
	$(MAKE) setup-debian
    else ifeq ($(shell cat /etc/os-release | grep '^ID=' | cut -d'=' -f2), debian)
	$(MAKE) setup-debian
    else
	@echo "Unsupported Linux distribution"
    endif
else ifeq ($(UNAME_S), Darwin)
	$(MAKE) setup-osx
else
	@echo "Unsupported OS"
endif

.PHONY: setup-arch
setup-arch: setup-pacman ## Sets up an Arch machine
.PHONY: setup-debian
setup-debian: setup-apt ## Sets up a Debian-based machine
.PHONY: setup-fedora
setup-fedora: setup-dnf ## Sets up a Fedora machine
.PHONY: setup-osx
setup-osx: setup-brew ## Sets up a Mac machine

.PHONY: setup-apt
setup-apt: ## Install packages via APT
	apt-get update -y; \
	if ! apt-get install -y guile-3.0; then \
		apt-get install -y guile; \
	fi;

.PHONY: setup-brew
setup-brew: ## Install packages via Homebrew (https://brew.sh)
	brew install \
		guile;

.PHONY: setup-dnf
setup-dnf: ## Install packages via DNF
	dnf install -y \
		guile;

.PHONY: setup-pacman
setup-pacman: ## Install packages via Pacman
	pacman -S \
		guile;

##@ Project
.PHONY: run
run: $(INIT_SOURCES) $(SOURCES) ## Run the project. Assumes setup is complete.
	guile \
		-L $(SOURCE_DIR) \
		-s \
			$(ENTRYPOINT)

.PHONY: run-with-repl
run-with-repl: REPL_PORT ?= 1689
run-with-repl:
run-with-repl: $(INIT_SOURCES) $(SOURCES) ## Run the project with a REPL server exposed
	guile \
		-L $(SOURCE_DIR) \
		--listen=$(REPL_PORT) \
		-s \
			$(ENTRYPOINT)

.PHONY: test
test: $(SOURCES) ## Tuns the test entrypoint of the project
	guile \
		-L $(SOURCE_DIR) \
		-c \
			'(begin (use-modules (guile-imgui)) (guile-imgui/test))' 

.PHONY: repl
repl: repl-with-port ## Runs a REPL that can load the project

.PHONY: repl-with-port
repl-with-port: ## Runs a REPL that can load the project, with an open REPL port
	guile \
		-L $(SOURCE_DIR) \
		--listen=$(REPL_PORT)

.PHONY: repl-no-port
repl-no-port: ## Runs a REPL that can load the project, without an open REPL port
	guile \
		-L $(SOURCE_DIR)

##@ Container

CONTAINER_NAME ?= exokomodo/$(PROJECT)
CONTAINER_TAG ?= dev
ADDITIONAL_CONTAINER_BUILD_ARGS ?= 
ADDITIONAL_CONTAINER_PUSH_ARGS ?= 

.PHONY: container-build
container-build:
container-build: ## Builds the container
ifeq ($(UNAME_M), arm64)
	docker buildx build --platform linux/amd64 . \
	--tag $(CONTAINER_NAME):$(CONTAINER_TAG) \
	--load \
	$(ADDITIONAL_CONTAINER_BUILD_ARGS)
else
	docker build . \
	--tag $(CONTAINER_NAME):$(CONTAINER_TAG) \
	$(ADDITIONAL_CONTAINER_BUILD_ARGS)
endif

.PHONY: container-run
container-run:
container-run: ## Runs the container
	docker run -it \
		-p 80:80 \
		-p 8080:8080 \
		-p 1689:1689 \
		--mount type=bind,source="$(CWD)/src",target=/app/src \
		$(CONTAINER_NAME):$(CONTAINER_TAG)

.PHONY: container-push
container-push: ## Pushes a specific tagged container
	docker image push \
		$(CONTAINER_NAME):$(CONTAINER_TAG) \
		$(ADDITIONAL_CONTAINER_PUSH_ARGS)

.PHONY: container-push-all
container-push-all: ## Pushes all container tags
	docker image push \
		--all-tags \
		$(CONTAINER_NAME) \
		$(ADDITIONAL_CONTAINER_PUSH_ARGS)

##@ Utilities

.PHONY: cimgui-generate
cimgui-generate:
	cd ./src/external/cimgui/generator; \
	./generator.sh; \
	mv ./output/cimgui_impl.h ../../../include/cimgui.h;

##@ Help

.PHONY: help
help: ## Displays help info
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
