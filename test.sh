#!/usr/bin/env bash

output=$(go run hello.go)

# checking if variable out == hello
if [ "${output}" == "hello" ]; 
then
	echo "GOOD: test passed!"
        exit 0
else 
	echo "BAD: test failed!"
	exit 1
fi
