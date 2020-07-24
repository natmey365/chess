SRC_DIR      := ./src
SRC_FILES    := $(wildcard $(SRC_DIR)/*.py)
DATA_DIR     := data

.PHONY: deps upgrade_deps clean 

MODEL_OPTS :=
model: $(SRC_DIR) | $(DATA_DIR)
	@echo $(MODEL_OPTS)

$(DATA_DIR):
	mkdir -p $(DATA_DIR)

deps:
	python3 -m pip install python-chess tensorflow

upgrade_deps:
	python3 -m pip install -U python-chess tensorflow

clean:
	
