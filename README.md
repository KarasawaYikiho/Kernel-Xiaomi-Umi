# Xiaomi 10 (umi) 内核构建（GitHub Actions）

已按参考仓库思路重建：
- 参考来源：`SO-TS/android_kernel_xiaomi_sm8250`
- 参考链接：https://github.com/SO-TS/android_kernel_xiaomi_sm8250

## 流程说明

Workflow：`.github/workflows/build-umi-kernel.yml`

当前为“参考式标准流程”（不含额外校验门禁）：
1. GitHub Actions 云端编译
2. 安装依赖 + 配置 ccache
3. 下载 ZyC Clang 15
4. 克隆目标内核仓库
5. 调用 `build.sh` 进行构建（支持 `device` 和 `ksu`）
6. 上传构建产物（zip + 关键调试文件）

## 使用

在 Actions 手动触发 **Build Xiaomi 10 (umi) Kernel (Reference-style)**：
- `kernel_repo`：内核 GitHub 地址
- `kernel_branch`：分支
- `device`：目标机型代号（默认 umi）
- `ksu`：是否启用 KernelSU


默认参数：
- `https://github.com/SO-TS/android_kernel_xiaomi_sm8250.git`
- `android16-aptusitu`
- `umi`
- `ksu=false`
