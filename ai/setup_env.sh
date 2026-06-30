#!/bin/bash
set -euo pipefail

ENV_NAME="bash_env_ai"

# Remove if exists
conda env remove -n "$ENV_NAME" -y 2>/dev/null || true

# Create from environment.yml
conda env create -f environment.yml

echo "Environment '"$ENV_NAME"' created successfully."
echo "Activate with: conda activate $ENV_NAME"
