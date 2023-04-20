#!/bin/bash

# Generate a list of port numbers from 2000-65000
ports=$(seq 2000 65000)

# Shuffle the list using the shuf command
shuffled=$(printf '%s\n' "${ports[@]}" | shuf)

# Select the first element of the shuffled list
port=$(echo "$shuffled" | head -n 1)

echo "Random port: $port"
