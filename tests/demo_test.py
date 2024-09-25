"""Demo Unit test Example."""

import pytest


def add(a: int | float, b: int | float) -> int | float:
    return a + b


def test_add_positive_numbers():
    assert add(1, 2) == 3


def test_add_negative_numbers():
    assert add(-1, -1) == -2


def test_add_mixed_numbers():
    assert add(-1, 1) == 0


def test_add_zero():
    assert add(0, 0) == 0


# The following is optional, as pytest will automatically find tests.
if __name__ == "__main__":
    pytest.main()
