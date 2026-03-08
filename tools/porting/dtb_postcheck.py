#!/usr/bin/env python3
from pathlib import Path

all_paths = Path("artifacts/all_dtb_paths.txt")
manifest = Path("artifacts/target_dtb_manifest.txt")
out = Path("artifacts/dtb-postcheck.txt")

all_set = set()
if all_paths.exists():
    all_set = {x.strip() for x in all_paths.read_text(encoding='utf-8', errors='ignore').splitlines() if x.strip()}

wanted = []
if manifest.exists():
    wanted = [x.strip() for x in manifest.read_text(encoding='utf-8', errors='ignore').splitlines() if x.strip()]

hit = []
miss = []
for name in wanted:
    found = any(p.endswith('/' + name) for p in all_set)
    (hit if found else miss).append(name)

out.write_text(
    "\n".join([
        f"wanted={len(wanted)}",
        f"hit={len(hit)}",
        f"miss={len(miss)}",
        "hit_names=" + (",".join(hit) if hit else ""),
        "miss_names=" + (",".join(miss) if miss else ""),
    ]) + "\n",
    encoding='utf-8'
)
print(f"wrote {out}")
