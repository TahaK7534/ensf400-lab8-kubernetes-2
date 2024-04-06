#!/bin/bash

app1_count=0
app2_count=0

for i in {1..100}; do
    result=$(curl -s http://$(minikube ip)/)
    if [[ $result == *"app-1"* ]]; then
        ((app1_count++))
    elif [[ $result == *"app-2"* ]]; then
        ((app2_count++))
    fi
done

echo "Number of results from app-1: $app1_count"
echo "Number of results from app-2: $app2_count"
