#!/bin/sh

# Function to execute build.sh file
execute_build() {
  echo "Executing $1"
  sh "$1"
}

# Find all directories and execute build.sh files
find . -type d | while read -r dir; do
  build_script="$dir/build.sh"
  if [[ -f "$build_script" ]]; then
      execute_build "$build_script"
  fi
done
