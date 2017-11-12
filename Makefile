SHELL := /bin/bash

FOLDERS=`find . -type d 2>/dev/null | egrep -v '\.git'`

genera-herramientax:
	echo "Folders: $(FOLDERS)" ;\
	echo "#!/bin/bash" > herramientax ;\
	for folder in $(FOLDERS) ; do \
		if [ "$$folder" != "." ] ; then \
			for archivo in $$( ls $$folder/*.sh ); do \
				echo "source $$archivo" >> herramientax ;\
			done \
		fi \
	done ; \
	if [ "$$?" == "0" ] ; then \
		echo "Creacion de script" "herramientax" "[OK]" ;\
	fi
