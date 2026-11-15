#!/usr/bin/env bash
set -e

echo "[1/3] Initializing virtual environment."
uv venv --python 3.12 --seed

echo "[2/3] Activating virtual environment."
source .venv/bin/activate

echo "[3/3] Installing vLLM."
uv pip install vllm --torch-backend=auto
uv pip install "vllm[audio]"

echo "Done!"
