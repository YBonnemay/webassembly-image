INSTANCE_NAME=webassembly-image

.DEFAULT_GOAL := help
.PHONY: build shell

help: ## Display available make commands
	@echo "Should have done a real TUI"

build:
	docker build -t ${INSTANCE_NAME} .

shell:
	docker run -it --rm --name=${INSTANCE_NAME} /bin/bash
