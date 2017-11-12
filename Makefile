SHELL := /bin/bash

carga-formatos:
	for archivo in $$(ls formatear) ; do \
		source formatear/$$archivo ; \
	done
	echo "Listo"
