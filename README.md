# Python Template

A template project for Python, designed to streamline the creation of Python projects using best practices.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [CI/CD Workflow](#cicd-workflow)
- [Dependencies](#dependencies)
- [Code Quality](#code-quality)
- [Contributing](#contributing)
- [License](#license)

## Features

- Automated testing and deployment with GitHub Actions.
- Code formatting and linting using [Ruff](https://ruff.rs).
- Type checking with [Mypy](https://mypy.readthedocs.io).
- Pre-commit hooks for maintaining code quality.

## Getting Started

To get started with this template, follow these steps:

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/python-template.git
   cd python-template
   ```

2. **Install Poetry:**

   Make sure you have [Poetry](https://python-poetry.org/) installed. If not, you can install it using:

   ```bash
   pip install poetry
   ```

3. **Install dependencies:**

   ```bash
   poetry install
   ```

4. **Run the application or tests:**

   Depending on your setup, you can now run your application or execute tests.

## CI/CD Workflow

This project includes a continuous integration (CI) workflow that is triggered on every push and pull request. It uses
GitHub Actions to run the following jobs:

1. **Setup**: Checks out the code, sets up Python, and installs dependencies using Poetry.
2. **Format**: Formats the code using Ruff.
3. **Lint**: Runs linting on the codebase with Ruff.
4. **Type Check**: Checks for type consistency using Mypy.
5. **Create Release**: Automatically creates a GitHub release when code is pushed to the main branch.

### Workflow File

The CI workflow is defined in `.github/workflows/ci.yml`.

## Dependencies

This project uses the following dependencies:

- **Core Dependencies**:
    - `python`: ^3.12
    - `loguru`: ^0.7.2

- **Development Dependencies**:
    - `ruff`: ^0.6.7 (for code linting and formatting)
    - `mypy`: ^1.11.2 (for type checking)
    - `pre-commit`: ^3.8.0 (for managing Git hooks)

## Code Quality

This repository employs several tools to maintain code quality:

- **Ruff**: A fast Python linter and formatter that enforces a consistent style and catches potential errors.
- **Mypy**: A static type checker for Python, ensuring type safety.

### Pre-commit Hooks

To set up pre-commit hooks for automatic formatting and linting on commit, install pre-commit:

```bash
pip install pre-commit
```

Then, install the hooks:

```bash
pre-commit install
```

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push to your forked repository.
5. Create a pull request explaining your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
