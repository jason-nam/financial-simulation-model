# Development Guide

## Setting Up Development Environment

1. Clone the repository:
   ```bash
   git clone https://github.com/jason-nam/financial-simulation-model.git
   cd financial-simulation-model
   ```

2. Install development dependencies:
   ```bash
   make install-dev
   ```

3. Install pre-commit hooks:
   ```bash
   make pre-commit
   ```

## Development Workflow

### Making Changes

1. Create a new branch for your feature/fix
2. Make your changes
3. Write/update tests
4. Run quality checks

### Running Tests

```bash
# Run all tests
make test

# Run with verbose output
make test-verbose

# Run with coverage report
pytest --cov=finmodel --cov-report=html
```

### Code Quality

#### Formatting

Format code with black:
```bash
make format
```

Check formatting:
```bash
make format-check
```

#### Linting

Run ruff linter:
```bash
make lint
```

Auto-fix linting issues:
```bash
make lint-fix
```

#### Type Checking

Run mypy:
```bash
make type-check
```

### Pre-commit Hooks

Pre-commit hooks run automatically on `git commit`. To run manually:

```bash
make pre-commit-run
```

### Running All Checks

Run all CI checks locally:
```bash
make ci
```

## Code Standards

### Python Version

- Target: Python 3.11+
- Use modern Python features and type hints

### Code Style

- Line length: 100 characters
- Formatter: black
- Linter: ruff
- Type checker: mypy

### Type Hints

All code should include type hints:

```python
def example_function(param: str) -> int:
    """Example function with type hints."""
    return len(param)
```

### Documentation

- Use Google-style docstrings
- Include type information in docstrings
- Document all public APIs

### Testing

- Write tests for all new features
- Maintain or improve code coverage
- Use pytest fixtures for common setups

## Contributing

### Pull Request Process

1. Fork the repository
2. Create a feature branch
3. Make your changes with tests
4. Ensure all checks pass (`make ci`)
5. Submit a pull request

### Commit Messages

Use clear, descriptive commit messages:
- Start with a verb (Add, Fix, Update, etc.)
- Keep the first line under 72 characters
- Add details in the body if needed

## Project Structure

```
src/finmodel/       # Main package code
tests/              # Test suite
docs/               # Documentation
```

## Makefile Commands

Run `make help` to see all available commands:

- `make install` - Install package
- `make install-dev` - Install with dev dependencies
- `make test` - Run tests
- `make lint` - Run linter
- `make format` - Format code
- `make type-check` - Run type checker
- `make clean` - Clean artifacts
- `make ci` - Run all checks

## Getting Help

- Check existing [issues](https://github.com/jason-nam/financial-simulation-model/issues)
- Create a new issue for bugs or features
- Review the documentation in the `docs/` directory
