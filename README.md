# vLLM — RTX PRO 4500 Aggressive Optimization

vLLM startup scripts aggressively tuned for the NVIDIA RTX PRO 4500, targeting 27B-class models with NVFP4 quantization.

## Quick Start

### 1. Initialize the Environment

```bash
bash scripts/setup.sh
```

This script will:

1. Create a Python 3.12 virtual environment (`.venv`) using `uv`
2. Activate the virtual environment
3. Install vLLM (auto-detects PyTorch backend)

### 2. Activate the Virtual Environment

If you need to re-enter the environment:

```bash
source .venv/bin/activate
```

### 3. Start the vLLM Server

```bash
bash scripts/model/serve-<model>.sh
```
