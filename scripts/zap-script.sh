
#!/bin/bash

docker pull zaproxy/zap-stable

docker run --rm \
  -v "$(pwd):/zap/wrk/:rw" \
  zaproxy/zap-stable \
  zap-baseline.py \
  -t "https://accle598.github.io/bitcoin-order-app/" \
  -l PASS \
  -r zap_baseline_report.html

