# Python Template

![Build Status](https://github.com/logic-py/python-template/actions/workflows/main.yml/badge.svg)
![License](https://img.shields.io/github/license/logic-py/python-template.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/logic-py/python-template)

This is a template project for Python, designed to streamline the creation of Python projects using (What I think are)
best practices.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [CI/CD Workflow](#cicd-workflow)
    - [Workflow File](#workflow-file)
- [Dependencies](#dependencies)
    - [Optional: Pyenv](#optional-pyenv)
- [Code Quality](#code-quality)
- [Pre-commit Hooks](#pre-commit-hooks)
    - [Pre-commit Hooks Configuration](#pre-commit-hooks-configuration)
    - [Run the Hooks Locally](#run-the-hooks-locally)
- [License](#license)

## Features

- Code formatting and linting using [Ruff](https://ruff.rs).
- Type checking with [Mypy](https://mypy.readthedocs.io).
- Pre-commit hooks to maintain code quality.

## Getting Started

Follow these steps to get started with this template:

1. **Clone the repository or use the template directly via GitHub.**

2. **Install Poetry:**

   Ensure you have [Poetry](https://python-poetry.org/) installed. If not, you can install it using:
   ```bash
   pip install poetry
   ```
   > **Note:** This template is set up using Poetry version 1.8.3.

3. **Install dependencies:**

   ```bash
   poetry install
   ```

4. **Ready to Implement:**

   You are now ready to implement your project. Keep in mind that this is a base template and not a fully functioning
   application.

## CI/CD Workflow

This project includes a continuous integration (CI) workflow that is triggered on every push and pull request, using
GitHub Actions to run the following jobs:

1. **Setup**: Checks out the code, sets up Python, and installs dependencies using Poetry.
2. **Format**: Formats the code with Ruff.
3. **Lint**: Runs linting on the codebase with Ruff.
4. **Type Check**: Checks for type consistency using Mypy.
5. **Create Release**: Automatically creates a GitHub release when code is pushed to the main branch.

### Workflow File

The main CI workflow is defined in `.github/workflows/main.yml`.

> **Note:** This workflow will only create a release tag based on your `pyproject.toml` version number. If the version
> has not been bumped, it will not create a new release.

## Dependencies

This project includes the following dependencies:

- **Core Dependencies**:
    - `python`: ^3.12 (switch the `.python-version` file to your liking)
    - `loguru`: ^0.7.2 (useful logging package)

- **Development Dependencies**:
    - `ruff`: ^0.6.9 (for code linting and formatting)
    - `mypy`: ^1.11.2 (for type checking)
    - `pre-commit`: ^4.0.0 (for managing Git hooks)
    - `pytest`: ^7.2.0 (for unit testing)

### Optional: Pyenv

<details>
<summary>Useful pyenv commands</summary>

Updating pyenv will refresh the Python mirrors to find the latest Python versions available:

```bash
pyenv update
```

List all available Python versions:

```bash
pyenv install --list
```

Download & install a specific Python version:

```bash
pyenv install 3.12.7
```

List the global Python version set by your system:

```bash
pyenv global
```

List the Python version set for your project/folder:

```bash
pyenv local
```

Set the global Python version for your system:

```bash
pyenv global 3.12.7
```

Set the local Python version for your project:

```bash
pyenv local 3.12.7
```

Feel free to utilize Pyenv and modify the `.python-version` file to your preference.

</details>

## Code Quality

This repository employs several tools to ensure code quality:

- **Ruff**: A fast Python linter and formatter that enforces a consistent style and detects potential errors.
- **Mypy**: A static type checker for Python that ensures type safety.

## Pre-commit Hooks

To set up pre-commit hooks for automatic formatting and linting on commit, ensure `pre-commit` is installed:

```bash
poetry install
```

Then, install the hooks:

```bash
poetry run pre-commit install
```

Once installed, the hooks will run automatically before each commit.

### Pre-commit Hooks Configuration

This repository uses pre-commit hooks to enforce code quality and standards before committing changes. Here’s an
overview of the configured hooks:

#### 1. Commitlint Hook

- **Purpose**: Ensures commit messages adhere to defined conventions for consistency and clarity.

#### 2. Local Hooks

- **Ruff Format**: Automatically formats Python code according to specified rules.
- **Ruff Lint**: Performs linting to catch potential errors and maintain coding standards.
- **Mypy Type Check**: Checks type annotations for consistency and correctness in Python code.
- **Pytest**: Runs the tests found in the `/tests` folder.

### Run the Hooks Locally

You can run specific hooks manually using:

```bash
poetry run pre-commit run <HOOK-ID>
```

For example, to run the Ruff formatter:

```bash
poetry run pre-commit run ruff-format
```

For more information on pre-commit, visit [pre-commit.com](https://pre-commit.com).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
