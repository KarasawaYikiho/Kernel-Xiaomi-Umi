#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   run_phase2_build.sh <device>

DEVICE="${1:-umi}"

mkdir -p out artifacts
set +e
make -C target O=$PWD/out LLVM=1 LLVM_IAS=1 "${DEVICE}_defconfig" > artifacts/make-defconfig.log 2>&1
rc1=$?

# Core build for packaging/readiness (fatal on failure)
make -C target O=$PWD/out LLVM=1 LLVM_IAS=1 -j"$(nproc)" Image.gz modules > artifacts/make-build.log 2>&1
rc2=$?

# DTB matrix build for diagnostics (non-fatal for phase2 progression)
make -C target O=$PWD/out LLVM=1 LLVM_IAS=1 -j"$(nproc)" dtbs > artifacts/make-dtbs.log 2>&1
rc3=$?
set -e

{
  echo "defconfig_rc=$rc1"
  echo "build_rc=$rc2"
  echo "dtbs_rc=$rc3"
} > artifacts/build-exit.txt

# fail only when defconfig or core build failed
if [ "$rc1" -ne 0 ] || [ "$rc2" -ne 0 ]; then
  exit 1
fi
