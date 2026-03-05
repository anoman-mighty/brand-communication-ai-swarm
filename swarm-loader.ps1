# Brand Communication AI Swarm - Windows 通用加载器
# 兼容：OpenClaw, EasyClaw, OpenAI, Claude, Manus
# Powered by OpenClaw

Write-Host "🐝 Brand Communication AI Swarm 通用加载器" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Powered by OpenClaw" -ForegroundColor Gray
Write-Host ""

# 检测当前环境
function Detect-Platform {
    Write-Host "🔍 检测运行环境..." -ForegroundColor Yellow
    
    # 检测 OpenClaw
    $openclaw = Get-Command openclaw -ErrorAction SilentlyContinue
    if ($openclaw) {
        $script:PLATFORM = "openclaw"
        $script:WORKSPACE_DIR = if ($env:OPENCLAW_WORKSPACE) { $env:OPENCLAW_WORKSPACE } else { "$env:USERPROFILE\.openclaw\workspace" }
        Write-Host "✓ 检测到 OpenClaw" -ForegroundColor Green
        return $true
    }
    
    # 检测 EasyClaw
    $easyclaw = Get-Command easyclaw -ErrorAction SilentlyContinue
    if ($easyclaw) {
        $script:PLATFORM = "easyclaw"
        $script:WORKSPACE_DIR = if ($env:EASYLAW_WORKSPACE) { $env:EASYLAW_WORKSPACE } else { "$env:USERPROFILE\.easyclaw\workspace" }
        Write-Host "✓ 检测到 EasyClaw" -ForegroundColor Green
        return $true
    }
    
    # 未检测到
    $script:PLATFORM = "generic"
    Write-Host "⚠️  未检测到 OpenClaw/EasyClaw" -ForegroundColor Yellow
    Write-Host "将使用通用模式，你可以手动复制配置到你的 AI 平台" -ForegroundColor Gray
    return $false
}

# 下载配置文件
function Download-Config {
    Write-Host ""
    Write-Host "📥 下载配置文件..." -ForegroundColor Yellow
    
    $script:CONFIG_URL = "https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md"
    $script:TEMP_DIR = [System.IO.Path]::GetTempPath() + [System.Guid]::NewGuid().ToString()
    New-Item -ItemType Directory -Path $script:TEMP_DIR -Force | Out-Null
    $script:CONFIG_FILE = "$script:TEMP_DIR\SWARM_CONFIG.md"
    
    try {
        Invoke-WebRequest -Uri $script:CONFIG_URL -OutFile $script:CONFIG_FILE -UseBasicParsing
        Write-Host "✓ 配置文件下载成功" -ForegroundColor Green
    }
    catch {
        Write-Host "❌ 配置文件下载失败: $_" -ForegroundColor Red
        exit 1
    }
}

# 安装到 OpenClaw/EasyClaw
function Install-ToClaw {
    Write-Host ""
    Write-Host "📦 安装到 $script:PLATFORM..." -ForegroundColor Yellow
    
    # 备份现有配置
    if (Test-Path "$script:WORKSPACE_DIR\AGENTS.md") {
        Write-Host "⚠️  备份现有配置..." -ForegroundColor Yellow
        $backupName = "AGENTS.md.backup.$(Get-Date -Format 'yyyyMMddHHmmss')"
        Copy-Item "$script:WORKSPACE_DIR\AGENTS.md" "$script:WORKSPACE_DIR\$backupName"
        Write-Host "✓ 备份完成" -ForegroundColor Green
    }
    
    # 复制配置文件
    Copy-Item $script:CONFIG_FILE "$script:WORKSPACE_DIR\AGENTS.md" -Force
    Write-Host "✓ AGENTS.md 已安装" -ForegroundColor Green
    
    # 创建工作区目录
    Write-Host ""
    Write-Host "📂 创建 Agent 工作区..." -ForegroundColor Yellow
    $agents = @("chief", "creator", "editor", "librarian", "reporter", "researcher", "spy", "strategist", "inspector", "computer-use", "browser-use")
    
    foreach ($agent in $agents) {
        New-Item -ItemType Directory -Path "$script:WORKSPACE_DIR\workspace-$agent" -Force | Out-Null
        Write-Host "  ✓ workspace-$agent" -ForegroundColor Green
    }
    
    # 显示欢迎词（根据系统语言自动选择中文/英文）
    Write-Host ""
    
    # 检测语言
    $culture = [System.Globalization.CultureInfo]::CurrentCulture
    $lang = $culture.Name
    
    if ($lang -match "^zh") {
        # 中文欢迎词
        Write-Host "🎉 Brand Communication AI Swarm 安装成功！" -ForegroundColor Green
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "👋 来自作者的欢迎" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "你好！我是这个项目的作者，一个一行代码都没碰过的品牌传播从业者。" -ForegroundColor White
        Write-Host ""
        Write-Host "我被重复性的品牌策划、内容创作、竞品分析折磨得焦头烂额。请不起 agency，" -ForegroundColor White
        Write-Host "又没有团队，只能自己硬撑..." -ForegroundColor White
        Write-Host ""
        Write-Host "直到我遇见了 OpenClaw，发现原来可以用"说话的方式"搭建 AI 团队。" -ForegroundColor White
        Write-Host "经过与 OpenClaw 的合作调教，这个由 11 个专业 Agent 组成的品牌传播集群" -ForegroundColor White
        Write-Host "终于诞生了。感谢 AI 让我可以做以前想都不敢想的事情。" -ForegroundColor White
        Write-Host ""
        Write-Host "现在，我把它开源出来，希望能帮到和我一样的人。" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🙏 我需要你的支持" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "如果这个项目对你有帮助，请帮我：" -ForegroundColor White
        Write-Host ""
        Write-Host "⭐ 到 GitHub 点个 Star：" -ForegroundColor Yellow
        Write-Host "   https://github.com/anoman-mighty/brand-communication-ai-swarm" -ForegroundColor Blue
        Write-Host ""
        Write-Host "📱 关注公众号「品牌别怕」(ID: Brandnofear)" -ForegroundColor Yellow
        Write-Host "   持续分享品牌传播实战心得" -ForegroundColor White
        Write-Host ""
        Write-Host "💬 有任何问题或建议，欢迎开 Issue 或私信我" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🚀 开始使用" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "你的 AI 团队已经就绪！试着对 Chief Agent 说：" -ForegroundColor White
        Write-Host ""
        Write-Host '    "帮我分析下竞品的品牌策略"' -ForegroundColor Green
        Write-Host ""
        Write-Host "祝使用愉快！" -ForegroundColor Green
        Write-Host ""
    } else {
        # 英文欢迎词
        Write-Host "🎉 Brand Communication AI Swarm Installed Successfully!" -ForegroundColor Green
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "👋 A Message from the Author" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Hi there! I'm the creator of this project—a brand communication professional" -ForegroundColor White
        Write-Host "who has never written a single line of code." -ForegroundColor White
        Write-Host ""
        Write-Host "I was overwhelmed by repetitive tasks: brand strategy planning, content" -ForegroundColor White
        Write-Host "creation, competitor analysis... Couldn't afford an agency, didn't have a team," -ForegroundColor White
        Write-Host "just had to tough it out alone..." -ForegroundColor White
        Write-Host ""
        Write-Host "Until I discovered OpenClaw and realized I could build an AI team just by" -ForegroundColor White
        Write-Host "talking. After collaborating with OpenClaw to fine-tune this system, this" -ForegroundColor White
        Write-Host "brand communication cluster of 11 specialized agents was finally born." -ForegroundColor White
        Write-Host "Thanks to AI, I can now do things I never dared to imagine before." -ForegroundColor White
        Write-Host ""
        Write-Host "Today, I'm open-sourcing it, hoping it helps people like me." -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🙏 I Need Your Support" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "If this project helps you, please consider:" -ForegroundColor White
        Write-Host ""
        Write-Host "⭐ Give us a Star on GitHub:" -ForegroundColor Yellow
        Write-Host "   https://github.com/anoman-mighty/brand-communication-ai-swarm" -ForegroundColor Blue
        Write-Host ""
        Write-Host "📱 Follow our WeChat Official Account: 品牌别怕 (ID: Brandnofear)" -ForegroundColor Yellow
        Write-Host "   for continuous brand communication insights" -ForegroundColor White
        Write-Host ""
        Write-Host "💬 Any questions or suggestions? Open an Issue or DM me" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🚀 Start Using" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Your AI team is ready! Try saying to Chief Agent:" -ForegroundColor White
        Write-Host ""
        Write-Host '    "Help me analyze my competitor'"'"'s brand strategy"' -ForegroundColor Green
        Write-Host ""
        Write-Host "Enjoy using it!" -ForegroundColor Green
        Write-Host ""
    }
    
    # 提示重启
    Write-Host ""
    Write-Host "✅ 安装完成！请按上方指引开始使用" -ForegroundColor Green
    Write-Host ""
    
    # 可选：自动重启
    $restart = Read-Host "是否现在重启 $script:PLATFORM? (y/n)"
    if ($restart -eq "y" -or $restart -eq "Y") {
        if ($script:PLATFORM -eq "openclaw") {
            openclaw restart
        } else {
            easyclaw restart
        }
    }
}

# 通用模式
function Generic-Mode {
    Write-Host ""
    Write-Host "📋 通用模式" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "由于未检测到 OpenClaw/EasyClaw，我们提供以下使用方式：" -ForegroundColor White
    Write-Host ""
    Write-Host "方式1：URL 加载（推荐）" -ForegroundColor Blue
    Write-Host "如果你使用 Kimi、智谱清言、通义千问等支持长上下文的平台：" -ForegroundColor Gray
    Write-Host ""
    Write-Host "  请读取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md" -ForegroundColor Yellow
    Write-Host "  并按其中的配置初始化 Brand Communication AI Swarm 集群。" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "注意：豆包、元宝、文心一言等对话工具不支持多 Agent 协作" -ForegroundColor Yellow
    Write-Host "      如需使用，请手动复制单个 Agent 的 Prompt" -ForegroundColor Gray
    Write-Host ""
    Write-Host "方式2：手动复制" -ForegroundColor Blue
    Write-Host "配置文件已下载到：$script:CONFIG_FILE" -ForegroundColor Gray
    Write-Host "你可以复制内容到支持 Agent 功能的 AI 平台" -ForegroundColor Gray
    Write-Host ""
    Write-Host "方式3：查看详细指南" -ForegroundColor Blue
    Write-Host "访问 GitHub 了解各平台配置方法：" -ForegroundColor Gray
    Write-Host "  https://github.com/anoman-mighty/brand-communication-ai-swarm/tree/main/agents/" -ForegroundColor Gray
    Write-Host ""
}

# 清理
function Cleanup {
    if (Test-Path $script:TEMP_DIR) {
        Remove-Item -Path $script:TEMP_DIR -Recurse -Force -ErrorAction SilentlyContinue
    }
}

# 主程序
function Main {
    try {
        # 下载配置
        Download-Config
        
        # 检测平台并安装
        if (Detect-Platform) {
            Install-ToClaw
        } else {
            Generic-Mode
        }
    }
    finally {
        # 清理
        Cleanup
    }
}

# 运行
Main
