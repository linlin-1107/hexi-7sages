#!/bin/bash
# Hexi Sage Council - 智囊团人设安装脚本
# 将人设文件复制到 OpenClaw Agent 工作空间

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PERSONA_DIR="$SCRIPT_DIR/persona"
WORKSPACE="${QCLAW_WORKSPACE:-$HOME/.qclaw/workspace}"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo "👑 Hexi Sage Council - 智囊团人设安装"
echo "══════════════════════════════════════"
echo ""

# Check workspace
if [ ! -d "$WORKSPACE" ]; then
    echo -e "${RED}错误: 未找到 OpenClaw 工作空间: $WORKSPACE${NC}"
    echo "请设置 QCLAW_WORKSPACE 环境变量或确认 OpenClaw 已安装。"
    exit 1
fi

# Check persona files
for f in SOUL.md IDENTITY.md AGENTS.md USER.md MEMORY.md; do
    if [ ! -f "$PERSONA_DIR/$f" ]; then
        echo -e "${RED}错误: 缺少文件 persona/$f${NC}"
        exit 1
    fi
done

# Backup existing files if they exist
BACKUP_DIR="$WORKSPACE/.hexi-backup-$(date +%Y%m%d-%H%M%S)"
BACKUP_CREATED=false

for f in SOUL.md IDENTITY.md AGENTS.md USER.md MEMORY.md; do
    if [ -f "$WORKSPACE/$f" ]; then
        if [ "$BACKUP_CREATED" = false ]; then
            mkdir -p "$BACKUP_DIR"
            echo -e "${YELLOW}检测到已有人设文件，备份到: $BACKUP_DIR${NC}"
            BACKUP_CREATED=true
        fi
        cp "$WORKSPACE/$f" "$BACKUP_DIR/"
    fi
done

# Copy persona files
for f in SOUL.md IDENTITY.md AGENTS.md USER.md MEMORY.md; do
    cp "$PERSONA_DIR/$f" "$WORKSPACE/$f"
    echo -e "${GREEN}✓${NC} $f → $WORKSPACE/$f"
done

echo ""
echo -e "${GREEN}══════════════════════════════════════${NC}"
echo -e "${GREEN}安装完成！${NC}"
echo ""
echo "下一步操作："
echo "  1. 编辑 $WORKSPACE/USER.md 填写你的信息"
echo "  2. 编辑 $WORKSPACE/MEMORY.md 添加你的记忆"
echo "  3. 运行 openclaw gateway restart 使配置生效"
echo ""
if [ "$BACKUP_CREATED" = true ]; then
    echo -e "${YELLOW}原文件已备份到: $BACKUP_DIR${NC}"
    echo ""
fi
echo "智囊团阵容：邓绥👑 张衡🔧 范蠡💰 韩非⚖️ 商鞅⚔️ 荀子📚 鬼谷子🧠 子贡📱"
echo ""
