#!/bin/bash

# Declare readonly variables
readonly MIN_AGE=18
readonly MAX_AGE=65
readonly COMPANY_NAME="Poridhi"

# Declare a readonly array
readonly VALID_DEPARTMENTS=("HR" "Engineering" "Marketing" "Finance")

# Function to validate age
validate_age() {
    local age=$1
    if [[ $age -lt $MIN_AGE || $age -gt $MAX_AGE ]]; then
        echo "Age $age is not within the allowed range ($MIN_AGE - $MAX_AGE)."
    else
        echo "Age $age is valid."
    fi
    echo "2nd arg $2"
}

# Demonstrate readonly behavior
echo "Company: $COMPANY_NAME"
echo "Valid Departments: ${VALID_DEPARTMENTS[@]}"

# Test age validation
validate_age $1 $2
validate_age $2

# Attempt to modify readonly variables (this will cause an error)
#echo "Trying to modify readonly variables..."
#MIN_AGE=16  # This should fail
#VALID_DEPARTMENTS[0]="Sales"  # This should fail
