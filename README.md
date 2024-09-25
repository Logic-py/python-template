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

1. **Clone the repository or use the template directly via GitHub:**

2. **Install Poetry:**

   Make sure you have [Poetry](https://python-poetry.org/) installed. If not, you can install it using:
   ```bash
   pip install poetry
   ```

   This template was setup using Poetry version 1.8.3

3. **Install dependencies:**

   ```bash
   poetry install
   ```

4. **Ready to Implement:**

   You're now ready to implement whatever you need. Keep in mind that this is just a base template and not a fully
   functioning application.

## CI/CD Workflow

This project includes a continuous integration (CI) workflow that is triggered on every push and pull request. It uses
GitHub Actions to run the following jobs:

1. **Setup**: Checks out the code, sets up Python, and installs dependencies using Poetry.
2. **Format**: Formats the code using Ruff.
3. **Lint**: Runs linting on the codebase with Ruff.
4. **Type Check**: Checks for type consistency using Mypy.
5. **Create Release**: Automatically creates a GitHub release when code is pushed to the main branch.

### Workflow File

The CI workflow is defined in `.github/workflows/ci_check_release.yml`.

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

## Pre-commit Hooks

To set up pre-commit hooks for automatic formatting and linting on commit, make sure pre-commit is installed:

```bash
poetry install
```

Then, install the hooks:

```bash
pre-commit install
```

Once installed, the hooks will run automatically before each commit.

### Pre-Commit Hooks Configuration

This repository uses pre-commit hooks to enforce code quality and standards before committing changes. Below is a
high-level overview of the configured hooks.

#### 1. Commitlint Hook

- **Purpose:** Ensures commit messages adhere to defined conventions for consistency and clarity.

#### 2. Local Hooks

- **Ruff Format:** Automatically formats Python code according to specified rules.
- **Ruff Lint:** Performs linting to catch potential errors and maintain coding standards.
- **Mypy Type Check:** Checks type annotations for consistency and correctness in Python code.

#### Resources

For more information on pre-commit, visit [pre-commit.com](https://pre-commit.com).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
