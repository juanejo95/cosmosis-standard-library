export MAKEFILES := $(CURDIR)/config/local_compiler_overrides.mk $(MAKEFILES)

include ${COSMOSIS_SRC_DIR}/config/compilers.mk
include ${COSMOSIS_SRC_DIR}/config/subdirs.mk

SUBDIRS = boltzmann shear supernovae structure mass_function likelihood
