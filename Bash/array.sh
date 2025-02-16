#!/bin/bash

# Declaring arrays
declare -a fruits=("apple" "banana" "orange" "grape")

# Accessing array elements
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"

# Iterating through array
for fruit in "${fruits[@]}"; do
    echo "Processing fruit: $fruit"
done
