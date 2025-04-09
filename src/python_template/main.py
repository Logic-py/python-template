"""Public module example."""

from loguru import logger


def example(data: str) -> None:
    """Use this docstring as an example for an Example function.

    Args:
        data: a string, testing

    Returns:
        Nothing

    """
    logger.info(data)


if __name__ == "__main__":
    logger.info("hello world, test")

    a = 5
    b = 1

    example(data=str(a + b))
