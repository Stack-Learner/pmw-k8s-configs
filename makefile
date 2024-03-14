# Define variables
ROOT_DIR := $(shell CD && echo %CD%)

# Define recursive wildcard function
rwildcard=$(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))

# Define targets and rules
.PHONY: apply_configs apply_recursive

apply_configs:
	@echo "Applying Kubernetes configs in directory: $(ROOT_DIR)"
	kubectl apply -f "$(ROOT_DIR)"

apply_recursive: apply_configs $(call rwildcard,$(ROOT_DIR),*)
	@echo "Finished applying Kubernetes configs."

# Default target
.DEFAULT_GOAL := apply_recursive
