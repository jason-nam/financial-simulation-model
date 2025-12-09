.PHONY: help install install-dev test lint format type-check clean pre-commit ci

help:  ## Show this help message
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-20s %s\n", $$1, $$2}'

install:  ## Install the package
	pip install -e .

install-dev:  ## Install the package with development dependencies
	pip install -e ".[dev]"

test:  ## Run tests with coverage
	pytest

test-verbose:  ## Run tests with verbose output
	pytest -vv

lint:  ## Run linting checks (ruff)
	ruff check src tests

lint-fix:  ## Run linting checks and fix issues
	ruff check --fix src tests

format:  ## Format code with black
	black src tests

format-check:  ## Check code formatting without making changes
	black --check src tests

type-check:  ## Run type checking with mypy
	mypy src tests

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
	pre-commit install

pre-commit-run:  ## Run pre-commit hooks on all files
	pre-commit run --all-files

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
