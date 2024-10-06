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
  features=$(grep -i "^* feat:" "$all_commits" || true)
  if [ -n "$features" ]; then
    echo -e "\n### 🚀 Features"
    echo "$features"
  fi

  # Bug Fixes
  fixes=$(grep -i "^* fix:" "$all_commits" || true)
  if [ -n "$fixes" ]; then
    echo -e "\n### 🐛 Bug Fixes"
    echo "$fixes"
  fi

  # Documentation
  docs=$(grep -i "^* docs:" "$all_commits" || true)
  if [ -n "$docs" ]; then
    echo -e "\n### 📚 Documentation"
    echo "$docs"
  fi

  # Style Changes
  styles=$(grep -i "^* style:" "$all_commits" || true)
  if [ -n "$styles" ]; then
    echo -e "\n### 💎 Style Changes"
    echo "$styles"
  fi

  # Tests
  tests=$(grep -i "^* test:" "$all_commits" || true)
  if [ -n "$tests" ]; then
    echo -e "\n### 🧪 Tests"
    echo "$tests"
  fi

  # CI Changes
  ci=$(grep -i "^* ci:" "$all_commits" || true)
  if [ -n "$ci" ]; then
    echo -e "\n### 🔄 CI/CD Updates"
    echo "$ci"
  fi

  # Other Changes
  others=$(grep -i -v "^* feat:\|^* fix:\|^* docs:\|^* style:\|^* test:\|^* ci:" "$all_commits" || true)
  if [ -n "$others" ]; then
    echo -e "\n### 🔧 Other Changes"
    echo "$others"
  fi

  # Cleanup
  rm "$all_commits"
}

#changelog=$(generate_categorized_changelog)
#echo "$changelog"