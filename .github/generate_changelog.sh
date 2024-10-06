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

  # Store all commits in a temporary file
  all_commits=$(mktemp)
  $git_log_command --pretty=format:"* %s (%h)" --reverse > "$all_commits"

  # Features
  echo "### 🚀 Features"
  grep -i "^* feat:" "$all_commits" || true

  # Bug Fixes
  echo -e "\n### 🐛 Bug Fixes"
  grep -i "^* fix:" "$all_commits" || true

  # Documentation
  echo -e "\n### 📚 Documentation"
  grep -i "^* docs:" "$all_commits" || true

  # Other Changes
  echo -e "\n### 🔧 Other Changes"
  grep -i -v "^* feat:\|^* fix:\|^* docs:" "$all_commits" || true

  # Cleanup
  rm "$all_commits"
}

# Usage example:
# changelog=$(generate_categorized_changelog "v1.0.0")
# echo "$changelog"