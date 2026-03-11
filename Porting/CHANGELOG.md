# Porting Changelog

> Milestone-only changelog.

## 2026-03-11

- Refactored postprocess scripts to share a centralized KV parser (`Tools/Porting/Kv_Utils.py`), removing duplicated parsing logic.
- Kept decision/report chain behavior intact while reducing maintenance overhead.
- Performed repo-wide documentation rewrite for consistency and readability.

## 2026-03-09

- Added AnyKernel candidate zip packaging in Phase2 workflow (`AnyKernel3-umi-candidate.zip`).
- Expanded migration statistics and diagnostics/reporting chain.
- Improved workflow reliability with concurrency control and timeout handling.
- Simplified compile flow by removing obsolete quality-gate path.

## 2026-03-08

- Initialized 5+ porting orchestrator skeleton.
- Added capability inventory and first classification/gap outputs.
- Started automated Phase2 migration/build attempts for `umi`.
