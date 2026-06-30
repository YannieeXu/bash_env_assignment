#!/bin/bash
set -euo pipefail

ENV_NAME="bash_env"

export CONDA_YES_ACCEPT_TERMS_OF_SERVICE=true

conda env remove -n "$ENV_NAME" -y 2>/dev/null || true

conda env create -f environment.yml

echo "Environment '$ENV_NAME' created successfully."
echo "Activate with:conda activate $ENV_NAME"