# Project-local compiler/linker overrides.
# This file is intentionally in the repository so we do not need to edit
# the CosmoSIS package installed in a conda environment.

OS ?= $(shell uname -s)

ifeq ($(OS),Darwin)
# Allow unresolved symbols in module shared-library links on macOS; symbols
# are resolved when loaded by the host process.
export LDFLAGS += -Wl,-undefined,dynamic_lookup
endif
