# Custom targets for this repository.
#
# Once `devctl repo setup` / `devctl gen makefile` has run, the generated
# Makefiles (Makefile.gen.*.mk) also include Makefile.custom.mk; this minimal
# Makefile keeps `make sync` working in the meantime.
include Makefile.custom.mk
