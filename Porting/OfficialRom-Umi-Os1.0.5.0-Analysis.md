# Official ROM Package Analysis (UMI OS1.0.5.0.TJBCNXM)

## Source Artifact

- Source file: `D:\GIT\MIUI_UMI_OS1.0.5.0.TJBCNXM_d01651ed86_13.0.zip`
- ZIP size bytes: `4413290022`
- ZIP SHA256: `1e6f5eba43219dfeead7395387c0e2eba9ff49c310917b9cf22092963f7adba1`
- Entry count: `48`

## Top-Level Entries (Key)

`META-INF`, `boot.img`, `dynamic_partitions_op_list`, `firmware-update`,
`system*.dat*`, `vendor*.dat*`, `product*.dat*`, `odm*.dat*`, `system_ext*.dat*`, `mi_ext*.dat*`

## Metadata Highlights

- `pre-device=umi`
- `post-build=Xiaomi/umi/umi:13/.../V816.0.5.0.TJBCNXM`
- `post-sdk-level=33`
- `post-security-patch-level=2024-03-01`

## Dynamic Partitions (Observed)

Group: `qti_dynamic_partitions` (`9126805504` bytes)

- `system`: `1203900416`
- `vendor`: `1740369920`
- `product`: `4297064448`
- `odm`: `134217728`
- `system_ext`: `664535040`
- `mi_ext`: `2646016`

## Updater Assertions (Observed)

- Device gate enforces `ro.product.device == umi`
- Build-date gate prevents downgrade over newer build
- Includes firmware partition patch flow via `firmware-update/*`

## Policy Note

This document is **analysis-only evidence** for metadata/partition sizing context.
No proprietary contents from official ROM are imported into this repository.
