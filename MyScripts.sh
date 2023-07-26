#!/bin/bash

factorial() {
    num=$1
    result=1
    while ((num > 0)); do
        result=$((result * num))
        num=$((num - 1))
    done
    echo "$result"
}

echo "Select operation: +, -, *, /, %, !"
read -p "Enter the operation you want to perform: " operation

if [[ "$operation" == "!" ]]; then
    read -p "Enter the number to calculate factorial: " number
    result=$(factorial $number)
else
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    case "$operation" in
        "+")
            result=$((num1 + num2))
            ;;
        "-")
            result=$((num1 - num2))
            ;;
        "*")
            result=$((num1 * num2))
            ;;
        "/")
            result=$((num1 / num2))
            ;;
        "%")
            result=$((num1 % num2))
            ;;
        *)
            echo "Invalid operation entered!"
            exit 1
            ;;
    esac
fi
echo "Result: $result"