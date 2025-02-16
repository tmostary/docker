#!/bin/bash
# String operations
first_name="Ahnaf"
last_name="Nabil"
# String concatenation
full_name="$first_name $last_name"
echo "Full name: $full_name"

# String length
name_length=${#full_name}
echo "Length of full name: $name_length"

# Substring extraction
echo "First 4 characters: ${full_name:5:9}"
