#!/bin/bash
# Brand Communication AI Swarm - 通用加载器
# 兼容：OpenClaw, EasyClaw, OpenAI, Claude, Manus
# Powered by OpenClaw

set -e

echo "🐝 Brand Communication AI Swarm 通用加载器"
echo "=========================================="
echo "Powered by OpenClaw"
echo ""

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 检测当前环境
detect_platform() {
    echo "🔍 检测运行环境..."
    
    # 检测 OpenClaw/EasyClaw
    if command -v openclaw &> /dev/null; then
        PLATFORM="openclaw"
        WORKSPACE_DIR="${OPENCLAW_WORKSPACE:-$HOME/.openclaw/workspace}"
        echo -e "${GREEN}✓ 检测到 OpenClaw${NC}"
        return 0
    elif command -v easyclaw &> /dev/null; then
        PLATFORM="easyclaw"
        WORKSPACE_DIR="${EASYLAW_WORKSPACE:-$HOME/.easyclaw/workspace}"
        echo -e "${GREEN}✓ 检测到 EasyClaw${NC}"
        return 0
    else
        PLATFORM="generic"
        echo -e "${YELLOW}⚠️  未检测到 OpenClaw/EasyClaw${NC}"
        echo "将使用通用模式，你可以手动复制配置到你的 AI 平台"
        return 1
    fi
}

# 下载配置文件
download_config() {
    echo ""
    echo "📥 下载配置文件..."
    
    CONFIG_URL="https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md"
    TEMP_DIR=$(mktemp -d)
    CONFIG_FILE="$TEMP_DIR/SWARM_CONFIG.md"
    
    if command -v curl &> /dev/null; then
        curl -fsSL "$CONFIG_URL" -o "$CONFIG_FILE"
    elif command -v wget &> /dev/null; then
        wget -q "$CONFIG_URL" -O "$CONFIG_FILE"
    else
        echo -e "${RED}❌ 错误：需要 curl 或 wget${NC}"
        exit 1
    fi
    
    if [ -f "$CONFIG_FILE" ]; then
        echo -e "${GREEN}✓ 配置文件下载成功${NC}"
    else
        echo -e "${RED}❌ 配置文件下载失败${NC}"
        exit 1
    fi
}

# 安装到 OpenClaw/EasyClaw
install_to_claw() {
    echo ""
    echo "📦 安装到 $PLATFORM..."
    
    # 备份现有配置
    if [ -f "$WORKSPACE_DIR/AGENTS.md" ]; then
        echo -e "${YELLOW}⚠️  备份现有配置...${NC}"
        cp "$WORKSPACE_DIR/AGENTS.md" "$WORKSPACE_DIR/AGENTS.md.backup.$(date +%Y%m%d%H%M%S)"
        echo -e "${GREEN}✓ 备份完成${NC}"
    fi
    
    # 复制配置文件
    cp "$CONFIG_FILE" "$WORKSPACE_DIR/AGENTS.md"
    echo -e "${GREEN}✓ AGENTS.md 已安装${NC}"
    
    # 创建工作区目录
    echo ""
    echo "📂 创建 Agent 工作区..."
    AGENTS=("chief" "creator" "editor" "librarian" "reporter" "researcher" "spy" "strategist" "inspector" "computer-use" "browser-use")
    
    for agent in "${AGENTS[@]}"; do
        mkdir -p "$WORKSPACE_DIR/workspace-$agent"
        echo -e "  ${GREEN}✓${NC} workspace-$agent"
    done
    
    # 显示欢迎词（根据系统语言自动选择中文/英文）
    echo ""
    
    # 检测语言并显示对应欢迎词
    LANG_DETECT="${LANG:-en}"
    if [[ "$LANG_DETECT" =~ ^zh(_CN|_TW|_HK|_SG)? ]] || \
       [[ "$LC_ALL" =~ ^zh ]] || \
       [[ "$LC_MESSAGES" =~ ^zh ]]; then
        # 中文欢迎词
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
        # 英文欢迎词
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
    
    # 提示重启
    echo ""
    echo -e "${GREEN}✅ 安装完成！请按上方指引开始使用${NC}"
    echo ""
    
    # 可选：自动重启
    read -p "是否现在重启 $PLATFORM? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if [ "$PLATFORM" == "openclaw" ]; then
            openclaw restart
        else
            easyclaw restart
        fi
    fi
}

# 通用模式（无 OpenClaw/EasyClaw）
generic_mode() {
    echo ""
    echo "📋 通用模式"
    echo ""
    echo "由于未检测到 OpenClaw/EasyClaw，我们提供以下使用方式："
    echo ""
    echo -e "${BLUE}方式1：URL 加载（推荐）${NC}"
    echo "如果你使用 Kimi、智谱清言、通义千问等支持长上下文的平台："
    echo ""
    echo "  请读取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md"
    echo "  并按其中的配置初始化 Brand Communication AI Swarm 集群。"
    echo ""
    echo -e "${YELLOW}注意：豆包、元宝、文心一言等对话工具不支持多 Agent 协作${NC}"
    echo "      如需使用，请手动复制单个 Agent 的 Prompt"
    echo ""
    echo -e "${BLUE}方式2：手动复制${NC}"
    echo "配置文件已下载到：$CONFIG_FILE"
    echo "你可以复制内容到支持 Agent 功能的 AI 平台"
    echo ""
    echo -e "${BLUE}方式3：查看详细指南${NC}"
    echo "访问 GitHub 了解各平台配置方法："
    echo "  https://github.com/anoman-mighty/brand-communication-ai-swarm/tree/main/agents/"
    echo ""
}

# 清理
cleanup() {
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
}

# 主程序
main() {
    # 设置清理钩子
    trap cleanup EXIT
    
    # 下载配置
    download_config
    
    # 检测平台并安装
    if detect_platform; then
        install_to_claw
    else
        generic_mode
    fi
}

# 运行
main
