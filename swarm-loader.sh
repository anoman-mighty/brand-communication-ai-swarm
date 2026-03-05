#!/bin/bash
# Brand Communication AI Swarm - Universal Loader
# Compatible with: OpenClaw, EasyClaw, OpenAI, Claude, Manus
# Powered by OpenClaw

set -e

echo "🐝 Brand Communication AI Swarm Universal Loader"
echo "================================================"
echo "Powered by OpenClaw"
echo ""

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Detect current environment
detect_platform() {
    echo "🔍 Detecting environment..."
    
    # Detect OpenClaw/EasyClaw
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
        echo "Will use generic mode. You can manually copy the config to your AI platform."
        return 1
    fi
}

# Download configuration file
download_config() {
    echo ""
    echo "📥 Downloading configuration..."
    
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
        echo -e "${GREEN}✓ Configuration downloaded successfully${NC}"
    else
        echo -e "${RED}❌ Configuration download failed${NC}"
        exit 1
    fi
}

# Install to OpenClaw/EasyClaw
install_to_claw() {
    echo ""
    echo "📦 Installing to $PLATFORM..."
    
    # Backup existing config
    if [ -f "$WORKSPACE_DIR/AGENTS.md" ]; then
        echo -e "${YELLOW}⚠️  Backing up existing config...${NC}"
        cp "$WORKSPACE_DIR/AGENTS.md" "$WORKSPACE_DIR/AGENTS.md.backup.$(date +%Y%m%d%H%M%S)"
        echo -e "${GREEN}✓ Backup completed${NC}"
    fi
    
    # Copy configuration file
    cp "$CONFIG_FILE" "$WORKSPACE_DIR/AGENTS.md"
    echo -e "${GREEN}✓ AGENTS.md installed${NC}"
    
    # Create workspace directories
    echo ""
    echo "📂 Creating Agent workspaces..."
    AGENTS=("chief" "creator" "editor" "librarian" "reporter" "researcher" "spy" "strategist" "inspector" "computer-use" "browser-use")
    
    for agent in "${AGENTS[@]}"; do
        mkdir -p "$WORKSPACE_DIR/workspace-$agent"
        echo -e "  ${GREEN}✓${NC} workspace-$agent"
    done
    
    # Display welcome message (auto-detect language)
    echo ""
    
    # Detect language and show welcome
    LANG_DETECT="${LANG:-en}"
    if [[ "$LANG_DETECT" =~ ^zh(_CN|_TW|_HK|_SG)? ]] || \
       [[ "$LC_ALL" =~ ^zh ]] || \
       [[ "$LC_MESSAGES" =~ ^zh ]]; then
        # Chinese welcome
        cat << 'WELCOME_EOF'

🎉 Brand Communication AI Swarm 安装成功！

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
👋 来自作者的欢迎

你好！我是这个项目的作者，一个一行代码都没碰过的品牌传播从业者。

我被重复性的品牌策划、内容创作、竞品分析折磨得焦头烂额。请不起 agency，
又没有团队，只能自己硬撑...

直到我遇见了 OpenClaw，发现原来可以用"说话的方式"搭建 AI 团队。
经过与 OpenClaw 的合作调教，这个由 11 个专业 Agent 组成的品牌传播集群
终于诞生了。感谢 AI 让我可以做以前想都不敢想的事情。

现在，我把它开源出来，希望能帮到和我一样的人。

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🙏 我需要你的支持

如果这个项目对你有帮助，请帮我：

⭐ 到 GitHub 点个 Star：
   https://github.com/anoman-mighty/brand-communication-ai-swarm

📱 关注公众号「品牌别怕」(ID: Brandnofear)
   持续分享品牌传播实战心得

💬 有任何问题或建议，欢迎开 Issue 或私信我

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 开始使用

你的 AI 团队已经就绪！试着对 Chief Agent 说：

    "帮我分析下竞品的品牌策略"

祝使用愉快！

WELCOME_EOF
    else
        # English welcome
        cat << 'WELCOME_EOF'

🎉 Brand Communication AI Swarm Installed Successfully!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
👋 A Message from the Author

Hi there! I'm the creator of this project—a brand communication professional 
who has never written a single line of code.

I was overwhelmed by repetitive tasks: brand strategy planning, content 
creation, competitor analysis... Couldn't afford an agency, didn't have a team,
just had to tough it out alone...

Until I discovered OpenClaw and realized I could build an AI team just by 
talking. After collaborating with OpenClaw to fine-tune this system, this 
brand communication cluster of 11 specialized agents was finally born. 
Thanks to AI, I can now do things I never dared to imagine before.

Today, I'm open-sourcing it, hoping it helps people like me.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🙏 I Need Your Support

If this project helps you, please consider:

⭐ Give us a Star on GitHub:
   https://github.com/anoman-mighty/brand-communication-ai-swarm

📱 Follow our WeChat Official Account: 品牌别怕 (ID: Brandnofear)
   for continuous brand communication insights

💬 Any questions or suggestions? Open an Issue or DM me

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 Start Using

Your AI team is ready! Try saying to Chief Agent:

    "Help me analyze my competitor's brand strategy"

Enjoy using it!

WELCOME_EOF
    fi
    
    # Prompt to restart
    echo ""
    echo -e "${GREEN}✅ Installation complete! Follow the guide above to start using${NC}"
    echo ""
    
    # Optional: auto restart
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

# Generic mode (no OpenClaw/EasyClaw)
generic_mode() {
    echo ""
    echo "📋 Generic Mode"
    echo ""
    echo "OpenClaw/EasyClaw not detected. Here are your options:"
    echo ""
    echo -e "${BLUE}Option 1: URL Loading (Recommended)${NC}"
    echo "If you're using Kimi, Zhipu Qingyan, Tongyi Qianwen, or other platforms with long context support:"
    echo ""
    echo "  Please read https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md"
    echo "  and initialize the Brand Communication AI Swarm cluster."
    echo ""
    echo -e "${YELLOW}Note: Chat-only tools like Doubao, Yuanbao, Wenxin Yiyan don't support multi-agent collaboration${NC}"
    echo "      For these, manually copy individual Agent prompts."
    echo ""
    echo -e "${BLUE}Option 2: Manual Copy${NC}"
    echo "Configuration file downloaded to: $CONFIG_FILE"
    echo "You can copy the content to your AI platform"
    echo ""
    echo -e "${BLUE}Option 3: View Detailed Guide${NC}"
    echo "Visit GitHub for platform-specific setup:"
    echo "  https://github.com/anoman-mighty/brand-communication-ai-swarm/tree/main/agents/"
    echo ""
}

# Cleanup
cleanup() {
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}

# Main program
main() {
    # Set cleanup trap
    trap cleanup EXIT
    
    # Download config
    download_config
    
    # Detect platform and install
    if detect_platform; then
        install_to_claw
    else
        generic_mode
    fi
}

# Run
main
