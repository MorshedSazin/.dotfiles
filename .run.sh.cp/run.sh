#!/bin/bash

touch file
# Read the C++ file name from the user
read -p "Enter the C++ file name (e.g., file.cpp): " cpp_file

# Compile the C++ program
g++ -std=c++20 -o file $cpp_file


# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "successful."
    ./file
else
    echo "Compilation failed."
fi

# Remove the compiled program
rm file






#g++ -std=c++20 -o main $cpp_file && ./main -f <input.txt >|output.txt && cat output.txt && rm main

