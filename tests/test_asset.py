"""Tests for Asset class."""

import pytest

from finmodel.asset import Asset


class TestAsset:
    """Test cases for the Asset class."""

    def test_init_not_implemented(self) -> None:
        """Test that Asset.__init__ raises NotImplementedError."""
        with pytest.raises(NotImplementedError, match="Asset.__init__ is not yet implemented"):
            Asset()

    def test_value_not_implemented(self) -> None:
        """Test that Asset.value raises NotImplementedError."""
        # We can't instantiate Asset, so we test the method directly
        with pytest.raises(NotImplementedError, match="Asset.value is not yet implemented"):
            Asset.value(None)  # type: ignore[arg-type]

    def test_update_not_implemented(self) -> None:
        """Test that Asset.update raises NotImplementedError."""
        # We can't instantiate Asset, so we test the method directly
        with pytest.raises(NotImplementedError, match="Asset.update is not yet implemented"):
            Asset.update(None)  # type: ignore[arg-type]
