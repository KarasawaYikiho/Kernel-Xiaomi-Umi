#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   run_phase2_build.sh <device>

DEVICE="${1:-umi}"

mkdir -p out artifacts
set +e
make -C target O=$PWD/out LLVM=1 LLVM_IAS=1 "${DEVICE}_defconfig" > artifacts/make-defconfig.log 2>&1
rc1=$?
make -C target O=$PWD/out LLVM=1 LLVM_IAS=1 -j"$(nproc)" Image.gz dtbs modules > artifacts/make-build.log 2>&1
rc2=$?
set -e

{
  echo "defconfig_rc=$rc1"
  echo "build_rc=$rc2"
} > artifacts/build-exit.txt

# fail when build stage failed, keep logs for downstream artifact/report steps
if [ "$rc1" -ne 0 ] || [ "$rc2" -ne 0 ]; then
  exit 1
fi
