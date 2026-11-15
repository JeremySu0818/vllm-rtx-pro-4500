export VLLM_USE_V2_MODEL_RUNNER=1

vllm serve RedHatAI/diffusiongemma-26B-A4B-it-NVFP4 \
  --host 0.0.0.0 \
  --served-model-name RedHatAI/diffusiongemma-26B-A4B-it-NVFP4 \
  --trust-remote-code \
  --tensor-parallel-size 1 \
  --max-model-len 262144 \
  --max-num-seqs 2 \
  --max-num-batched-tokens 4096 \
  --gpu-memory-utilization 0.95 \
  --attention-backend TRITON_ATTN \
  --generation-config vllm \
  --hf-overrides '{"diffusion_sampler":"entropy_bound","diffusion_entropy_bound":0.1}' \
  --diffusion-config '{"canvas_length":256}' \
  --default-chat-template-kwargs '{"enable_thinking":true}' \
  --enable-chunked-prefill \
  --enable-prefix-caching \
  --enable-auto-tool-choice \
  --tool-call-parser gemma4 \
  --reasoning-parser gemma4
