# 🐝 Brand Communication AI Swarm

> **English** | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md)

> Universal Multi-Agent System for Brand Communication

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-purple.svg)](https://github.com/cfmind/openclaw)
[![Compatible](https://img.shields.io/badge/Compatible-OpenClaw%20%7C%20EasyClaw%20%7C%20OpenAI%20GPTs%20%7C%20Claude%20%7C%20Manus-blue.svg)]()

---

## 🚀 Quick Start (One Line)

### Method 1: Direct URL Loading (Recommended)

Copy this prompt and send to your AI Agent:

```
Please read https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md and initialize the Brand Communication AI Swarm cluster according to its configuration.
```

### Method 2: Script Installation

```bash
# Download and install
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

### Method 3: Manual Copy

1. Open [SWARM_CONFIG.md](https://github.com/anoman-mighty/brand-communication-ai-swarm/blob/main/SWARM_CONFIG.md)
2. Copy all content
3. Paste to your AI platform

---

## 📋 Architecture

```
                    🎯 Chief Agent (Commander)
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   Content Studio            Brand Strategy            Operations
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐               ┌────┴────┐
   │📝Creator│               │🔬Researcher│               │💻Comp   │
   │✏️Editor │               │🕵️Spy     │               │🌐Browser│
   │📚Librarian               │📋Strategist               │         │
   │📊Reporter                │🔍Inspector                │         │
   └─────────┘               └───────────┘               └─────────┘
```

## 🤖 Agent List

| Agent ID | Name | Role | Prompt Size |
|----------|------|------|-------------|
| `chief` | Chief Agent | Commander, task scheduling, quality control | 500+ |
| `creator` | Creator Agent | Long-form writing, research reports, proposals | 400+ |
| `editor` | Editor Agent | Polishing, humanizing text, style unification | 400+ |
| `librarian` | Librarian Agent | Knowledge management, case archiving | 350+ |
| `reporter` | Reporter Agent | Daily/weekly reports, progress sync | 350+ |
| `researcher` | Researcher Agent | Industry research, competitor analysis | 450+ |
| `spy` | Spy Agent | Intelligence gathering, user insights | 400+ |
| `strategist` | Strategist Agent | Communication strategy, topic planning | 450+ |
| `inspector` | Inspector Agent | Fact-checking, risk assessment | 400+ |
| `computer-use` | Computer-use Agent | Computer operations, software usage | 400+ |
| `browser-use` | Browser-use Agent | Browser automation | 400+ |

**Total: 11 Agents**

---

## 🎯 Platform Compatibility

### ✅ Full Agent Support (Recommended)

| Platform | Type | Notes |
|----------|------|-------|
| **OpenClaw** | Open Source | ⭐ Native multi-agent support |
| **EasyClaw** | Open Source | ⭐ Native multi-agent support |
| **OpenAI GPTs** | Commercial | ⭐ Create 11 custom GPTs |
| **Claude Projects** | Commercial | ⭐ Project + Instructions |
| **Manus** | Agent Platform | ⭐ Native agent architecture |

### ⚠️ Limited Support

| Platform | Notes |
|----------|-------|
| **Cursor** | Use via .cursorrules |
| **GitHub Copilot Chat** | Role instructions work, not native multi-agent |
| **Google Gemini** | Requires manual multi-session management |
| **Kimi** | 200k context, session isolation |
| **Zhipu Qingyan (GLM)** | Agent center |
| **Tongyi Qianwen (Alibaba)** | Bailian agent platform |
| **MiniMax** | API multi-role support |

### ❌ Not Supported (Chat-only Tools)

Doubao, Yuanbao, Wenxin Yiyan, Xinghuo, Tiangong AI, Hailuo AI, Wanzhi, Shangliang are chat-only tools without multi-agent capabilities.

---

## 📦 Installation

### Prerequisites

- Any AI Agent platform (OpenAI, Claude, Manus, OpenClaw, EasyClaw, etc.)
- No Git required
- No coding environment required

### Installation Steps

#### Option 1: URL Loading (Easiest)

Send to your Agent:

```
Please load Brand Communication AI Swarm config from https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md
```

#### Option 2: Script Installation

```bash
# Auto-detect platform and configure
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

#### Option 3: Manual Loading

1. Visit [SWARM_CONFIG.md](SWARM_CONFIG.md)
2. Copy file content
3. Paste to your AI platform

---

## 🎯 Usage Examples

### Example 1: Landing Page Optimization

```
User: Help me optimize our Landing Page

Chief Agent auto-schedules:
├── Researcher → Competitor analysis
├── Strategist → Positioning strategy  
├── Creator → Copywriting
├── Editor → Polishing
├── Inspector → Quality check
└── Reporter → Archiving
```

### Example 2: Product Launch Planning

```
User: We're launching a new product and need full planning

Chief Agent auto-schedules:
├── Researcher + Spy → Market intelligence
├── Strategist → Launch strategy + pricing
├── [Parallel]
│   ├── Creator → Content creation
│   └── Editor → Style unification
├── Inspector → Full quality check
└── Reporter → Archiving
```

---

## 📁 Project Structure

```
brand-communication-ai-swarm/
├── README.md              # This file (English)
├── README.zh-CN.md        # Simplified Chinese
├── README.zh-TW.md        # Traditional Chinese
├── SWARM_CONFIG.md        # Cluster core config (universal format)
├── swarm-loader.sh        # Mac/Linux install script
├── swarm-loader.ps1       # Windows install script
├── LICENSE                # MIT License
├── .gitignore             # Git ignore rules
└── docs/                  # Documentation
```

---

## 🛠️ Customization

### Modifying Agent Roles

Edit `SWARM_CONFIG.md` to modify agent descriptions and responsibilities.

### Adding New Agents

1. Add new agent entry in `SWARM_CONFIG.md`
2. Update agent list in install scripts

---

## 📚 Platform-Specific Guides

### OpenClaw / EasyClaw

Copy `SWARM_CONFIG.md` to workspace directly.

### OpenAI GPTs

1. Create 11 GPTs
2. Paste 11 agent configurations separately

### Claude Projects

1. Create Project
2. Paste Chief Agent config to Project Instructions
3. Let Chief help create other agents

### Manus

1. Create 11 Agents
2. Configure each agent's prompt separately

---

## 🤝 Contributing

Issues and PRs welcome!

---

## 📄 License

This project uses [MIT](LICENSE) License.

---

## 💬 Community & Support

- Questions? Open an [Issue](../../issues)
- Ideas? Start a [Discussion](../../discussions)

---

## 🙏 Acknowledgments

Thanks to these projects and communities:
- [OpenClaw](https://github.com/cfmind/openclaw) - Universal Agent Framework
- All contributors and users

---

<p align="center">
  <sub>Built with ❤️ by Brand Communication AI Swarm Team</sub>
  <br>
  <sub>Powered by OpenClaw</sub>
</p>
