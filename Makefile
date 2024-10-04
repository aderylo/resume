# Command to clean all files listed in .gitignore
clean:
	@echo "Cleaning up files listed in .gitignore..."
	@grep -v '^#' .gitignore | grep -v '^$$' | while read pattern; do \
		find . -name "$$pattern" -exec rm -rf {} +; \
	done
	@echo "Clean up complete."
