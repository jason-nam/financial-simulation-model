# Check if .venv exists and use it; otherwise fallback to system commands
VENV_BIN := .venv/bin
ifeq ($(wildcard $(VENV_BIN)/python),)
	VENV_BIN := .
endif

# Prefix for commands (handle empty VENV_BIN if needed, though here we default to .)
CMD_PREFIX := $(VENV_BIN)/

help:  ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'

install:  ## Install the package
	$(CMD_PREFIX)pip install -e .

install-dev:  ## Install the package with development dependencies
	$(CMD_PREFIX)pip install -e ".[dev]"

venv:  ## Create a virtual environment
	python3 -m venv .venv
	@echo "Virtual environment created in .venv"
	@echo "To activate, run: source .venv/bin/activate"
	@echo "Then run: make install-dev"

setup: venv  ## Create venv and install dev dependencies
	$(CMD_PREFIX)pip install --upgrade pip && $(CMD_PREFIX)pip install -e ".[dev]"
	@echo "Setup complete. Don't forget to run: source .venv/bin/activate"

test:  ## Run tests with coverage
	$(CMD_PREFIX)pytest

test-verbose:  ## Run tests with verbose output
	$(CMD_PREFIX)pytest -vv

lint:  ## Run linting checks (ruff)
	$(CMD_PREFIX)ruff check src tests

lint-fix:  ## Run linting checks and fix issues
	$(CMD_PREFIX)ruff check --fix src tests

format:  ## Format code with black
	$(CMD_PREFIX)black src tests

format-check:  ## Check code formatting without making changes
	$(CMD_PREFIX)black --check src tests

type-check:  ## Run type checking with mypy
	$(CMD_PREFIX)mypy src tests

clean:  ## Clean up build artifacts and cache files
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .ruff_cache
	rm -rf htmlcov/
	rm -rf .coverage
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

pre-commit:  ## Install pre-commit hooks
	$(CMD_PREFIX)pre-commit install

pre-commit-run:  ## Run pre-commit hooks on all files
	$(CMD_PREFIX)pre-commit run --all-files

ci:  ## Run all CI checks (format, lint, type-check, test)
	@echo "Running format check..."
	@$(MAKE) format-check
	@echo ""
	@echo "Running linter..."
	@$(MAKE) lint
	@echo ""
	@echo "Running type checker..."
	@$(MAKE) type-check
	@echo ""
	@echo "Running tests..."
	@$(MAKE) test
	@echo ""
	@echo "All checks passed!"
