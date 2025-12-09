# Getting Started

## Installation

### Prerequisites

- Python 3.11 or higher
- pip package manager

### Install from Source

```bash
git clone https://github.com/jason-nam/financial-simulation-model.git
cd financial-simulation-model
pip install -e ".[dev]"
```

## Basic Usage

**Note:** The package is currently in a scaffolding phase. Classes are stubs that raise `NotImplementedError`.

```python
from finmodel import Asset, Portfolio

# Currently raises NotImplementedError
# asset = Asset()
# portfolio = Portfolio()
```

## Development Setup

For development, install with development dependencies:

```bash
make install-dev
make pre-commit
```

## Next Steps

- Read the [API Reference](api-reference.md) for detailed class documentation
- Check out the [Development Guide](development.md) to contribute
