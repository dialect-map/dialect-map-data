SCHEMAS_FOLDER="schemas"
SCHEMAS_REGEX="$(SCHEMAS_FOLDER)/defs/*.json"


.PHONY: compile
compile:
	@echo "Compiling JSON schemas"
	@npx ajv compile -s $(SCHEMAS_FOLDER)/categories.schema.json -r $(SCHEMAS_REGEX)
	@npx ajv compile -s $(SCHEMAS_FOLDER)/groups.schema.json -r $(SCHEMAS_REGEX)


.PHONY: validate
validate:
	@echo "Validating JSON data files"
	@npx ajv validate -s $(SCHEMAS_FOLDER)/categories.schema.json -r $(SCHEMAS_REGEX) -d data/categories.json
	@npx ajv validate -s $(SCHEMAS_FOLDER)/groups.schema.json -r $(SCHEMAS_REGEX) -d data/jargons.json
