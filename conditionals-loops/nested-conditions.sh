#!/bin/bash

# Script: nested-conditions.sh
# Purpose: Demonstrates nested if-else with a DevOps-related use case
# Example: Check if nginx is installed, running, and listening on port 80

SERVICE="nginx"
PORT=80

echo "Checking status of $SERVICE..."

# 1️⃣ Check if service is installed
if command -v $SERVICE >/dev/null 2>&1; then
    echo "$SERVICE is installed."

    # 2️⃣ Check if service is running
    if systemctl is-active --quiet $SERVICE; then
        echo "$SERVICE is running."

        # 3️⃣ Check if service is listening on the expected port
        if ss -tuln | grep -q ":$PORT"; then
            echo "$SERVICE is listening on port $PORT. ✅"
        else
            echo "$SERVICE is NOT listening on port $PORT. ⚠️"
        fi

    else
        echo "$SERVICE is installed but NOT running. ❌"
    fi

else
    echo "$SERVICE is NOT installed. ❌"
fi

