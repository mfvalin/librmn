SHELL = /bin/sh

LIBNAME = librmn_014

WORKDIR = ./WorkDir

LIBDIR = `pwd`

DEBUG = No

default: genlib

genlib: 
	mkdir -p $(WORKDIR)
	mkdir -p $(LIBDIR)/$(EC_ARCH)
	if [ $(DEBUG) == "yes" ] ; \
	then \
	echo 'Compiling with DEBUG option' ; \
	sleep 2 ; \
	./make_locallib_packages-d ; \
	./merge_rmnlib_packages $(WORKDIR) $(LIBDIR) $(LIBNAME)_d ; \
	else \
	./make_locallib_packages ; \
	./merge_rmnlib_packages $(WORKDIR) $(LIBDIR) $(LIBNAME) ; \
	fi
