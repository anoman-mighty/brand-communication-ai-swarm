# Brand Communication AI Swarm v3 - Windows Loader
# 12 Agents with Deputy Chief Backup & Checkpoint Gates

Write-Host "🐝 Brand Communication AI Swarm v3" -ForegroundColor Cyan
Write-Host "==================================" -ForegroundColor Cyan
Write-Host "12 Agents | Deputy Chief Backup | Checkpoint Gates" -ForegroundColor Gray
Write-Host "Powered by OpenClaw" -ForegroundColor Gray
Write-Host ""

# Detect platform
function Detect-Platform {
    Write-Host "🔍 Detecting environment..." -ForegroundColor Yellow
    
    $openclaw = Get-Command openclaw -ErrorAction SilentlyContinue
    if ($openclaw) {
        $script:PLATFORM = "openclaw"
        $script:WORKSPACE_DIR = if ($env:OPENCLAW_WORKSPACE) { $env:OPENCLAW_WORKSPACE } else { "$env:USERPROFILE\.openclaw\workspace" }
        Write-Host "✓ OpenClaw detected" -ForegroundColor Green
        return $true
    }
    
    $easyclaw = Get-Command easyclaw -ErrorAction SilentlyContinue
    if ($easyclaw) {
        $script:PLATFORM = "easyclaw"
        $script:WORKSPACE_DIR = if ($env:EASYLAW_WORKSPACE) { $env:EASYLAW_WORKSPACE } else { "$env:USERPROFILE\.easyclaw\workspace" }
        Write-Host "✓ EasyClaw detected" -ForegroundColor Green
        return $true
    }
    
    $script:PLATFORM = "generic"
    Write-Host "⚠️  OpenClaw/EasyClaw not detected" -ForegroundColor Yellow
    Write-Host "This script is designed for OpenClaw/EasyClaw." -ForegroundColor Gray
    Write-Host "For other platforms, please manually copy SWARM_CONFIG.md" -ForegroundColor Gray
    return $false
}

# Download config
function Download-Config {
    Write-Host ""
    Write-Host "📥 Downloading v3 configuration..." -ForegroundColor Yellow
    
    $script:CONFIG_URL = "https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md"
    $script:TEMP_DIR = [System.IO.Path]::GetTempPath() + [System.Guid]::NewGuid().ToString()
    New-Item -ItemType Directory -Path $script:TEMP_DIR -Force | Out-Null
    $script:CONFIG_FILE = "$script:TEMP_DIR\SWARM_CONFIG.md"
    
    try {
        Invoke-WebRequest -Uri $script:CONFIG_URL -OutFile $script:CONFIG_FILE -UseBasicParsing
        Write-Host "✓ Configuration downloaded" -ForegroundColor Green
    }
    catch {
        Write-Host "❌ Download failed: $_" -ForegroundColor Red
        exit 1
    }
}

# Install
function Install-ToPlatform {
    Write-Host ""
    Write-Host "📦 Installing to $script:PLATFORM..." -ForegroundColor Yellow
    
    # Backup
    if (Test-Path "$script:WORKSPACE_DIR\AGENTS.md") {
        Write-Host "⚠️  Backing up existing config..." -ForegroundColor Yellow
        $backupName = "AGENTS.md.backup.$(Get-Date -Format 'yyyyMMddHHmmss')"
        Copy-Item "$script:WORKSPACE_DIR\AGENTS.md" "$script:WORKSPACE_DIR\$backupName"
        Write-Host "✓ Backup saved" -ForegroundColor Green
    }
    
    # Copy
    Copy-Item $script:CONFIG_FILE "$script:WORKSPACE_DIR\AGENTS.md" -Force
    Write-Host "✓ AGENTS.md installed" -ForegroundColor Green
    
    # Create 12 workspaces
    Write-Host ""
    Write-Host "📂 Creating 12 Agent workspaces..." -ForegroundColor Yellow
    $agents = @("chief", "deputy-chief", "creator", "editor", "librarian", "reporter", "researcher", "spy", "strategist", "inspector", "computer-use", "browser-use")
    
    foreach ($agent in $agents) {
        New-Item -ItemType Directory -Path "$script:WORKSPACE_DIR\workspace-$agent" -Force | Out-Null
        Write-Host "  ✓ workspace-$agent" -ForegroundColor Green
    }
    
    # Welcome
    Show-Welcome
    
    # Restart prompt
    Write-Host ""
    Write-Host "✅ Installation complete!" -ForegroundColor Green
    Write-Host ""
    $restart = Read-Host "Restart $script:PLATFORM now? (y/n)"
    if ($restart -eq "y" -or $restart -eq "Y") {
        if ($script:PLATFORM -eq "openclaw") {
            openclaw restart
        } else {
            easyclaw restart
        }
    }
}

# Show welcome
function Show-Welcome {
    Write-Host ""
    
    $culture = [System.Globalization.CultureInfo]::CurrentCulture
    $lang = $culture.Name
    
    if ($lang -match "^zh") {
        # Chinese
        Write-Host "🎉 Brand Communication AI Swarm v3 安装成功！" -ForegroundColor Green
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "👋 来自作者的欢迎" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "你好！我是这个项目的作者，一个一行代码都没碰过的品牌传播从业者。" -ForegroundColor White
        Write-Host ""
        Write-Host "我被重复性的品牌策划、内容创作、竞品分析折磨得焦头烂额。请不起 agency，" -ForegroundColor White
        Write-Host "又没有团队，只能自己硬撑..." -ForegroundColor White
        Write-Host ""
        Write-Host "直到我遇见了 OpenClaw，发现原来可以用`"说话的方式`"搭建 AI 团队。" -ForegroundColor White
        Write-Host "经过与 OpenClaw 的合作调教，这个由 12 个专业 Agent 组成的品牌传播集群" -ForegroundColor White
        Write-Host "终于诞生了（含 Deputy Chief 备份指挥官）。感谢 AI 让我可以做以前想都不敢想的事情。" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "✨ v3 新特性" -ForegroundColor Yellow
        Write-Host "• 12 个智能体（新增 Deputy Chief 备份）" -ForegroundColor White
        Write-Host "• 检查点门控（4 个质量关卡）" -ForegroundColor White
        Write-Host "• RACI 责任矩阵" -ForegroundColor White
        Write-Host "• 自动任务分配与监控" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🙏 我需要你的支持" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "⭐ GitHub: github.com/anoman-mighty/brand-communication-ai-swarm" -ForegroundColor Blue
        Write-Host "📱 公众号：品牌别怕 (Brandnofear)" -ForegroundColor Blue
        Write-Host "💬 问题或建议？欢迎开 Issue" -ForegroundColor White
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
        # English
        Write-Host "🎉 Brand Communication AI Swarm v3 Installed!" -ForegroundColor Green
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "👋 A Message from the Author" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Hi! I'm the creator—a brand communication professional" -ForegroundColor White
        Write-Host "who has never written a single line of code." -ForegroundColor White
        Write-Host ""
        Write-Host "I was overwhelmed by repetitive tasks: brand strategy, content" -ForegroundColor White
        Write-Host "creation, competitor analysis... No agency, no team." -ForegroundColor White
        Write-Host ""
        Write-Host "Until I discovered OpenClaw and built this AI team of" -ForegroundColor White
        Write-Host "12 specialized agents (including Deputy Chief backup)." -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "✨ v3 Features" -ForegroundColor Yellow
        Write-Host "• 12 Agents (Deputy Chief backup)" -ForegroundColor White
        Write-Host "• 4 Checkpoint Gates for quality" -ForegroundColor White
        Write-Host "• RACI responsibility matrix" -ForegroundColor White
        Write-Host "• Automated task orchestration" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🙏 Support Needed" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "⭐ GitHub: github.com/anoman-mighty/brand-communication-ai-swarm" -ForegroundColor Blue
        Write-Host "📱 WeChat: 品牌别怕 (Brandnofear)" -ForegroundColor Blue
        Write-Host "💬 Questions? Open an Issue" -ForegroundColor White
        Write-Host ""
        Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
        Write-Host "🚀 Get Started" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Your AI team is ready! Try saying to Chief Agent:" -ForegroundColor White
        Write-Host ""
        Write-Host '    "Help me analyze my competitor'"'"'s brand strategy"' -ForegroundColor Green
        Write-Host ""
        Write-Host "Enjoy!" -ForegroundColor Green
        Write-Host ""
    }
}

# Generic mode
function Generic-Mode {
    Write-Host ""
    Write-Host "⚠️  OpenClaw/EasyClaw not detected" -ForegroundColor Yellow
    Write-Host "This script requires OpenClaw or EasyClaw." -ForegroundColor Gray
    Write-Host "For other platforms, please manually copy SWARM_CONFIG.md" -ForegroundColor Gray
    Write-Host "from: https://github.com/anoman-mighty/brand-communication-ai-swarm" -ForegroundColor Gray
    Write-Host ""
}

# Cleanup
function Cleanup {
    if (Test-Path $script:TEMP_DIR) {
        Remove-Item -Path $script:TEMP_DIR -Recurse -Force -ErrorAction SilentlyContinue
    }
}

# Main
try {
    Download-Config
    if (Detect-Platform) {
        Install-ToPlatform
    } else {
        Generic-Mode
    }
}
finally {
    Cleanup
}
