#!/bin/bash

generate_categorized_changelog() {
  local previous_tag="$1"
  local git_log_command

  if [ -n "$previous_tag" ]; then
    git_log_command="git log $previous_tag..HEAD"
  else
    git_log_command="git log"
  fi

  echo "## What's Changed"

  # Features
  echo "### 🚀 Features"
  $git_log_command --pretty=format:"* %s (%h)" --reverse | grep "^* feat" || true

  # Bug Fixes
  echo -e "\n### 🐛 Bug Fixes"
  $git_log_command --pretty=format:"* %s (%h)" --reverse | grep "^* fix" || true

  # Documentation
  echo -e "\n### 📚 Documentation"
  $git_log_command --pretty=format:"* %s (%h)" --reverse | grep "^* docs" || true

  # Other Changes
  echo -e "\n### 🔧 Other Changes"
  $git_log_command --pretty=format:"* %s (%h)" --reverse | grep -v "^* feat\|^* fix\|^* docs" || true
}

# Usage in workflow:
# CHANGELOG=$(generate_categorized_changelog "$PREVIOUS_TAG")
# echo "CHANGELOG<<EOF" >> $GITHUB_ENV
# echo "$CHANGELOG" >> $GITHUB_ENV
# echo "EOF" >> $GITHUB_ENV