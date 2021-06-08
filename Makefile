SCHEMAS_FOLDER = "schemas"
SCHEMAS_DEFS   = "$(SCHEMAS_FOLDER)/defs/*.json"


.PHONY: compile
compile:
	@echo "Compiling JSON schemas"
	@npx ajv compile -s "$(SCHEMAS_FOLDER)/*.schema.json" -r $(SCHEMAS_DEFS)


.PHONY: validate
validate:
	@echo "Validating JSON data files"
	@npx ajv validate -s "$(SCHEMAS_FOLDER)/categories.schema.json" -r $(SCHEMAS_DEFS) -d "data/categories.json"
	@npx ajv validate -s "$(SCHEMAS_FOLDER)/groups.schema.json" -r $(SCHEMAS_DEFS) -d "data/jargons.json"
