
#!/bin/bash

set -e

docker pull zaproxy/zap-stable

mkdir -p zap-reports
chmod 777 zap-reports

docker run --rm \
  -v "$(pwd)/zap-reports:/zap/wrk/:rw" \
  zaproxy/zap-stable \
  zap-baseline.py \
  -t "https://accle598.github.io/bitcoin-order-app/" \
  -l PASS \
  -r zap_baseline_report.html


