#!/bin/bash

RUNNER_DIR="~/actions-runner"

echo "Starte GitHub Runner..."
cd "$RUNNER_DIR"
./run.sh &
echo "Runner gestartet (PID: $!)"
