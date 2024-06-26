#!/bin/bash

docker run \
       -it --rm \
       -v `pwd`:/aider \
       -v `pwd`/tmp.benchmarks/.:/benchmarks \
       -e OPENAI_API_KEY=$OPENROUTER_API_KEY \
       -e OPENAI_API_BASE='https://openrouter.ai/api/v1' \
       -e HISTFILE=/aider/.bash_history \
       -e AIDER_DOCKER=1 \
       -e AIDER_BENCHMARK_DIR=/benchmarks \
       aider-benchmark \
       bash
