#set shell script
#SHELL := #!/bin/bash

#Define the targets and their dependencies
.PHONY: linux clean

linux: clean
	chmod +x ./bin/linux.sh
	echo "Running Linux.sh... "
	./bin/linux.sh

clean:
	chmod +x ./bin/cleanup.sh
	echo "Cleaning..."
	./bin/cleanup.sh


