# Contributing

[中文贡献指南（CONTRIBUTING.zh-CN.md）](./CONTRIBUTING.zh-CN.md)

Thanks for helping improve **Kernel-Xiaomi-Umi**.

## Scope

This repository is a **kernel porting orchestrator** (CI workflows + migration/diagnostic tooling), not a full kernel source tree.

## Before You Start

1. Read `README.md`
2. Read `Porting/README.md`
3. Check `PORTING_PLAN.md` and latest `Porting/CHANGELOG.md`

## Branching

Follow `Porting/BRANCHING.md`:
- `port/phase*` for phase work
- `port/hotfix-*` for urgent fixes

## Pull Requests

Use the PR template and include:
- clear summary/scope
- validation notes (run/artifacts)
- risk + rollback notes for workflow/script changes

## Reference Sources Policy

Current external reference sources used by this project:
- `SO-TS/android_kernel_xiaomi_sm8250`
- `yefxx/xiaomi-umi-linux-kernel`
- `UtsavBalar1231/android_kernel_xiaomi_sm8150`
- `UtsavBalar1231/display-drivers`
- `UtsavBalar1231/camera-kernel`
- Author-ID discovery source: `liyafe1997` (Strawing)

Rules:
- Treat author IDs as account-level discovery inputs; select repositories explicitly before integration.
- Use references as donor/comparison inputs only; do not do blind subtree copy.
- Do not import proprietary blobs from official ROM packages into this repository.

## Change Expectations

- Keep docs updated when outputs/behavior change.
- Prefer reproducible CI outputs over local-only tweaks.
- For diagnostics, add scripts under `Tools/Porting/` and document them in `Tools/Porting/README.md`.

## Changelog Policy

- Add concise milestone entries to `Porting/CHANGELOG.md`.
- Put verbose historical detail in archive files when needed.

## Security / Safety

- Do not commit secrets/tokens.
- Keep `.gitignore` clean for local noise.
- Treat generated artifacts as disposable unless explicitly tracked.
