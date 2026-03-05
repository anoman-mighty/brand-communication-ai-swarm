#!/bin/bash
# Brand Communication AI Swarm v3 - Universal Loader
# 12 Agents with Deputy Chief Backup & Checkpoint Gates
# Compatible with: OpenClaw, EasyClaw

set -e

echo "🐝 Brand Communication AI Swarm v3"
echo "=================================="
echo "12 Agents | Deputy Chief Backup | Checkpoint Gates"
echo "Powered by OpenClaw"
echo ""

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

# Detect environment
detect_platform() {
    echo "🔍 Detecting environment..."
    
    if command -v openclaw &> /dev/null; then
        PLATFORM="openclaw"
        WORKSPACE_DIR="${OPENCLAW_WORKSPACE:-$HOME/.openclaw/workspace}"
        echo -e "${GREEN}✓ OpenClaw detected${NC}"
        return 0
    elif command -v easyclaw &> /dev/null; then
        PLATFORM="easyclaw"
        WORKSPACE_DIR="${EASYLAW_WORKSPACE:-$HOME/.easyclaw/workspace}"
        echo -e "${GREEN}✓ EasyClaw detected${NC}"
        return 0
    else
        PLATFORM="generic"
        echo -e "${YELLOW}⚠️  OpenClaw/EasyClaw not detected${NC}"
        echo "This script is designed for OpenClaw/EasyClaw."
        echo "For other platforms, please manually copy SWARM_CONFIG.md"
        return 1
    fi
}

# Download configuration
download_config() {
    echo ""
    echo "📥 Downloading v3 configuration..."
    
    CONFIG_URL="https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md"
    TEMP_DIR=$(mktemp -d)
    CONFIG_FILE="$TEMP_DIR/SWARM_CONFIG.md"
    
    if command -v curl &> /dev/null; then
        curl -fsSL "$CONFIG_URL" -o "$CONFIG_FILE"
    elif command -v wget &> /dev/null; then
        wget -q "$CONFIG_URL" -O "$CONFIG_FILE"
    else
        echo -e "${RED}❌ Error: curl or wget required${NC}"
        exit 1
    fi
    
    if [ -f "$CONFIG_FILE" ]; then
        echo -e "${GREEN}✓ Configuration downloaded${NC}"
    else
        echo -e "${RED}❌ Download failed${NC}"
        exit 1
    fi
}

# Install to platform
install_to_platform() {
    echo ""
    echo "📦 Installing to $PLATFORM..."
    
    # Backup existing
    if [ -f "$WORKSPACE_DIR/AGENTS.md" ]; then
        echo -e "${YELLOW}⚠️  Backing up existing config...${NC}"
        cp "$WORKSPACE_DIR/AGENTS.md" "$WORKSPACE_DIR/AGENTS.md.backup.$(date +%Y%m%d%H%M%S)"
        echo -e "${GREEN}✓ Backup saved${NC}"
    fi
    
    # Copy config
    cp "$CONFIG_FILE" "$WORKSPACE_DIR/AGENTS.md"
    echo -e "${GREEN}✓ AGENTS.md installed${NC}"
    
    # Create 12 Agent workspaces
    echo ""
    echo "📂 Creating 12 Agent workspaces..."
    AGENTS=("chief" "deputy-chief" "creator" "editor" "librarian" "reporter" "researcher" "spy" "strategist" "inspector" "computer-use" "browser-use")
    
    for agent in "${AGENTS[@]}"; do
        mkdir -p "$WORKSPACE_DIR/workspace-$agent"
        echo -e "  ${GREEN}✓${NC} workspace-$agent"
    done
    
    # Show welcome
    show_welcome
    
    # Prompt restart
    echo ""
    echo -e "${GREEN}✅ Installation complete!${NC}"
    echo ""
    read -p "Restart $PLATFORM now? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if [ "$PLATFORM" == "openclaw" ]; then
            openclaw restart
        else
            easyclaw restart
        fi
    fi
}

# Show welcome message
show_welcome() {
    echo ""
    
    LANG_DETECT="${LANG:-en}"
    if [[ "$LANG_DETECT" =~ ^zh ]]; then
        # Chinese
        cat << 'WELCOME'

🎉 Brand Communication AI Swarm v3 安装成功！

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
👋 来自作者的欢迎

你好！我是这个项目的作者，一个一行代码都没碰过的品牌传播从业者。

我被重复性的品牌策划、内容创作、竞品分析折磨得焦头烂额。请不起 agency，
又没有团队，只能自己硬撑...

直到我遇见了 OpenClaw，发现原来可以用"说话的方式"搭建 AI 团队。
经过与 OpenClaw 的合作调教，这个由 12 个专业 Agent 组成的品牌传播集群
终于诞生了（含 Deputy Chief 备份指挥官）。感谢 AI 让我可以做以前想都不敢想的事情。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✨ v3 新特性
• 12 个智能体（新增 Deputy Chief 备份）
• 检查点门控（4 个质量关卡）
• RACI 责任矩阵
• 自动任务分配与监控

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🙏 我需要你的支持

⭐ GitHub: github.com/anoman-mighty/brand-communication-ai-swarm
📱 公众号：品牌别怕 (Brandnofear)
💬 问题或建议？欢迎开 Issue

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 开始使用

你的 AI 团队已经就绪！试着对 Chief Agent 说：

    "帮我分析下竞品的品牌策略"

祝使用愉快！

WELCOME
    else
        # English
        cat << 'WELCOME'

🎉 Brand Communication AI Swarm v3 Installed!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
👋 A Message from the Author

Hi! I'm the creator—a brand communication professional 
who has never written a single line of code.

I was overwhelmed by repetitive tasks: brand strategy, content 
creation, competitor analysis... No agency, no team.

Until I discovered OpenClaw and built this AI team of 
12 specialized agents (including Deputy Chief backup).

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✨ v3 Features
• 12 Agents (Deputy Chief backup)
• 4 Checkpoint Gates for quality
• RACI responsibility matrix
• Automated task orchestration

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🙏 Support Needed

⭐ GitHub: github.com/anoman-mighty/brand-communication-ai-swarm
📱 WeChat: 品牌别怕 (Brandnofear)
💬 Questions? Open an Issue

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Get Started

Your AI team is ready! Try saying to Chief Agent:

    "Help me analyze my competitor's brand strategy"

Enjoy!

WELCOME
    fi
}

# Generic mode
generic_mode() {
    echo ""
    echo -e "${YELLOW}📋 OpenClaw/EasyClaw not detected${NC}"
    echo ""
    echo "This script requires OpenClaw or EasyClaw."
    echo "For other platforms, please manually copy SWARM_CONFIG.md"
    echo "from: https://github.com/anoman-mighty/brand-communication-ai-swarm"
    echo ""
}

# Cleanup
cleanup() {
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}

# Main
trap cleanup EXIT
main() {
    download_config
    if detect_platform; then
        install_to_platform
    else
        generic_mode
    fi
}

main
