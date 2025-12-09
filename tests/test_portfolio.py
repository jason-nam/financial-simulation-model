"""Tests for Portfolio class."""

import pytest

from finmodel.portfolio import Portfolio


class TestPortfolio:
    """Test cases for the Portfolio class."""

    def test_init_not_implemented(self) -> None:
        """Test that Portfolio.__init__ raises NotImplementedError."""
        with pytest.raises(NotImplementedError, match="Portfolio.__init__ is not yet implemented"):
            Portfolio()

    def test_add_asset_not_implemented(self) -> None:
        """Test that Portfolio.add_asset raises NotImplementedError."""
        # We can't instantiate Portfolio, so we test the method directly
        with pytest.raises(NotImplementedError, match="Portfolio.add_asset is not yet implemented"):
            Portfolio.add_asset(None)  # type: ignore[arg-type]

    def test_remove_asset_not_implemented(self) -> None:
        """Test that Portfolio.remove_asset raises NotImplementedError."""
        # We can't instantiate Portfolio, so we test the method directly
        with pytest.raises(
            NotImplementedError, match="Portfolio.remove_asset is not yet implemented"
        ):
            Portfolio.remove_asset(None)  # type: ignore[arg-type]

    def test_total_value_not_implemented(self) -> None:
        """Test that Portfolio.total_value raises NotImplementedError."""
        # We can't instantiate Portfolio, so we test the method directly
        with pytest.raises(
            NotImplementedError, match="Portfolio.total_value is not yet implemented"
        ):
            Portfolio.total_value(None)  # type: ignore[arg-type]
