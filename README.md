# finmodel

A professional financial simulation model built with Python 3.11+.

## Overview

finmodel is a Python package for financial modeling and simulation. It provides classes and methods for working with financial assets and portfolios.

**Note:** This is currently a scaffold project. Core functionality is under development.

## Features

- **Asset Management**: Model individual financial assets
- **Portfolio Management**: Manage collections of assets
- **Type Safety**: Full type hints with mypy checking
- **Code Quality**: Enforced with black, ruff, and pre-commit hooks
- **Testing**: Comprehensive test suite with pytest

## Requirements

- Python 3.11 or higher
- pip

## Installation

### From Source

Clone the repository and install in development mode:

```bash
git clone https://github.com/jason-nam/financial-simulation-model.git
cd financial-simulation-model
pip install -e ".[dev]"
```

### Using Make

The project includes a Makefile for common tasks:

```bash
make install-dev  # Install with development dependencies
```

## Development

### Setup

1. Install development dependencies:
   ```bash
   make install-dev
   ```

2. Install pre-commit hooks:
   ```bash
   make pre-commit
   ```

### Common Tasks

- **Run tests**: `make test`
- **Run linter**: `make lint`
- **Format code**: `make format`
- **Type check**: `make type-check`
- **Run all checks**: `make ci`
- **Clean artifacts**: `make clean`

For all available commands, run:
```bash
make help
```

### Code Quality

This project enforces code quality through:

- **black**: Code formatting (100 character line length)
- **ruff**: Fast Python linter
- **mypy**: Static type checking
- **pytest**: Testing framework with coverage reporting
- **pre-commit**: Automated checks before commits

### Testing

Run the test suite:

```bash
pytest
```

Run with coverage report:

```bash
pytest --cov=finmodel --cov-report=html
```

## Project Structure

```
financial-simulation-model/
├── src/
│   └── finmodel/          # Main package
│       ├── __init__.py
│       ├── asset.py       # Asset class
│       └── portfolio.py   # Portfolio class
├── tests/                 # Test suite
│   ├── __init__.py
│   ├── test_asset.py
│   └── test_portfolio.py
├── docs/                  # Documentation
├── pyproject.toml         # Project configuration
├── .pre-commit-config.yaml
├── .editorconfig
├── Makefile
├── README.md
└── LICENSE
```

## Usage

**Note:** The classes are currently stubs and will raise `NotImplementedError` when instantiated or called.

```python
from finmodel import Asset, Portfolio

# These will raise NotImplementedError
# asset = Asset()
# portfolio = Portfolio()
```

## Contributing

Contributions are welcome! Please ensure all tests pass and code quality checks succeed before submitting a pull request.

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run quality checks (`make ci`)
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Jason Nam

## Links

- [GitHub Repository](https://github.com/jason-nam/financial-simulation-model)
- [Issue Tracker](https://github.com/jason-nam/financial-simulation-model/issues)
