# Python Template

![Build Status](https://github.com/logic-py/python-template/actions/workflows/ci_check_release.yml/badge.svg)
![License](https://img.shields.io/github/license/logic-py/python-template.svg)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/logic-py/python-template)

This is a template project for Python, designed to streamline the creation of Python projects using (What I think are)
best practices.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [CI/CD Workflow](#cicd-workflow)
- [Dependencies](#dependencies)
- [Code Quality](#code-quality)
- [Pre-commit Hooks](#pre-commit-hooks)
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

The CI workflow is defined in `.github/workflows/ci_check_release.yml`.

## Dependencies

This project includes the following dependencies:

- **Core Dependencies**:
    - `python`: ^3.12 (switch the .python-version file to your liking)
    - `loguru`: ^0.7.2 (useful logging package)

- **Development Dependencies**:
    - `ruff`: ^0.6.9 (for code linting and formatting)
    - `mypy`: ^1.11.2 (for type checking)
    - `pre-commit`: ^3.8.0 (for managing Git hooks)
    - `pytest`: ^7.2.0 (for unit testing)

<details>
<summary>### Optional Dependency</summary>

### Optional Dependency

### Useful pyenv commands

Updating pyenv, this will refresh the python mirrors to find latest python versions available.

```bash
pyenv update
```

This will list all available python version to be installed.

```bash
pyenv install --list
```

This will download & install the provided python version.

```bash
pyenv install 3.12.7
```

This will list what python version is set by your system.

```bash
pyenv global
```

This will list what python version is set in your folder/project.

```bash
pyenv local
```

This will set the global python version of your system.

```bash
pyenv global 3.12.7
```

This will set the local python version of your folder/project.

```bash
pyenv local 3.12.7
```

Feel free to utilize Pyenv and change the .python-version file to your liking.

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

Then with poetry installed, install the hooks:

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
- **Pytest**: Runs the tests found in the /tests folder.

### Run the hooks locally:

```bash
poetry run pre-commit run <HOOK-ID>
```

For example, run the ruff formatter:

```bash
poetry run pre-commit run ruff-format
```

For more information on pre-commit, visit [pre-commit.com](https://pre-commit.com).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
