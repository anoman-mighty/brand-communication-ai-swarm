# 🐝 Brand Communication AI Swarm

> **English** | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md)

> Universal Multi-Agent System for Brand Communication
> 跨平台品牌传播多智能体系统

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-purple.svg)](https://github.com/cfmind/openclaw)
[![Compatible](https://img.shields.io/badge/Compatible-OpenClaw%20%7C%20EasyClaw%20%7C%20OpenAI%20GPTs%20%7C%20Claude%20%7C%20Manus-blue.svg)]()

---

## 🚀 Quick Start

**Copy and send to your AI Agent:**

```
Please detect your operating system, then execute the corresponding installation command:
- Linux/Mac: curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
- Windows: iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**Or run directly in your terminal:**

### Mac / Linux / WSL
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

### Windows (PowerShell)
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**This will:**
- Download and install the configuration
- Display the author welcome message (auto-detect language)
- Set up all 12 agents automatically (including Deputy Chief backup)
- Create checkpoint gates for quality control

---

## 📋 Architecture

```
                    🎯 Chief Agent (Commander)
                     + Deputy Chief (Backup)
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   Research Team              Content Team              Ops Team
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐               ┌────┴────┐
   │🔬Researcher              │📝Creator  │               │💻Comp   │
   │🕵️Spy     │               │✏️Editor   │               │🌐Browser│
   │📋Strategist              │📚Librarian│               └─────────┘
   │🔍Inspector               │📊Reporter │               
   └─────────┘               └───────────┘               
```

## 🤖 12 Agent List

| Agent ID | Name | Role | Feature |
|----------|------|------|---------|
| `chief` | Chief Agent | Commander, task scheduling, checkpoint gates | ⭐ Primary |
| `deputy-chief` | Deputy Chief | Backup commander, overflow handler | 🔄 Backup |
| `researcher` | Researcher | Industry research, competitor analysis | 📊 |
| `spy` | Spy | Intelligence gathering, zero-creativity | 🕵️ |
| `strategist` | Strategist | Communication strategy, planning | 📋 |
| `inspector` | Inspector | Quality gatekeeper, checkpoint controller | 🔍 QC |
| `creator` | Creator | Long-form writing, proposals | 📝 |
| `editor` | Editor | AI-humanizing, style unification | ✏️ |
| `librarian` | Librarian | Knowledge base, case archiving | 📚 |
| `reporter` | Reporter | Progress sync, reporting | 📊 |
| `computer-use` | Computer-use | Desktop automation | 💻 |
| `browser-use` | Browser-use | Web automation | 🌐 |

**Total: 12 Agents (11 Specialists + 1 Backup Commander)**

---

## 🎯 Key Features

### ✅ Checkpoint Gates (Stage Gates)
Every task passes through quality checkpoints:
- Gate 1: Research Complete → QC → Proceed/Revise
- Gate 2: Strategy Approved → QC → Proceed/Revise
- Gate 3: Content Complete → QC → Proceed/Revise
- Gate 4: Final QC Pass → Deliver

### 🔄 Deputy Chief Backup
When Chief is overloaded, Deputy Chief activates to:
- Handle overflow tasks
- Monitor subset of agents
- Take over if Chief unavailable

### 📊 RACI Matrix
Clear responsibility assignment:
- **R**esponsible: Who does the work
- **A**ccountable: Chief makes decisions
- **C**onsulted: Who provides input
- **I**nformed: Who stays updated

---

## 🎯 Platform Compatibility

### ✅ Full Support

| Platform | Type | Status |
|----------|------|--------|
| **OpenClaw** | Open Source | ⭐ Native multi-agent |
| **EasyClaw** | Open Source | ⭐ Native multi-agent |
| **OpenAI GPTs** | Commercial | ⭐ Create 12 custom GPTs |
| **Claude Projects** | Commercial | ⭐ Project + Instructions |
| **Manus** | Agent Platform | ⭐ Native agent architecture |

### ⚠️ Limited Support

| Platform | Notes |
|----------|-------|
| **Cursor** | Via .cursorrules |
| **Kimi** | 200k context |
| **Zhipu Qingyan** | Agent center |
| **Tongyi Qianwen** | Bailian platform |

---

## 📦 Installation

### Prerequisites

- Any AI Agent platform
- No Git required
- No coding required

### Install via Command Line

**Mac/Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

**Windows:**
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

### Alternative: Manual Setup

Copy configuration from [SWARM_CONFIG.md](SWARM_CONFIG.md)

---

## 🎯 Workflow Examples

### Landing Page Optimization (with Checkpoints)

```
User: Optimize our Landing Page

Chief Agent with Checkpoint Gates:
├─ Phase 1: Research [Gate 1]
│  ├─ Researcher → Competitor analysis
│  ├─ Spy → User feedback
│  └─ Inspector → QC Review → PASS/REVISE
├─ Phase 2: Strategy [Gate 2]
│  ├─ Strategist → Positioning
│  └─ Inspector → QC Review → PASS/REVISE
├─ Phase 3: Creation [Gate 3]
│  ├─ Creator → Copywriting
│  ├─ Editor → Polishing
│  └─ Inspector → QC Review → PASS/REVISE
└─ Phase 4: Delivery [Gate 4]
   ├─ Final QC
   ├─ Librarian → Archive
   └─ Reporter → Summary
```

---

## 📁 Project Structure

```
brand-communication-ai-swarm/
├── README.md              # This file (English)
├── README.zh-CN.md        # Simplified Chinese
├── README.zh-TW.md        # Traditional Chinese
├── SWARM_CONFIG.md        # Core config with 12 Agents
├── swarm-loader.sh        # Mac/Linux installer
├── swarm-loader.ps1       # Windows installer
├── LICENSE                # MIT License
└── docs/                  # Documentation
```

---

## 🤝 Contributing

Issues and PRs welcome!

---

## 📄 License

[MIT](LICENSE) License.

---

## 💬 Community

- Questions? [Issues](../../issues)
- Ideas? [Discussions](../../discussions)
- WeChat: 品牌别怕 (Brandnofear)

---

<p align="center">
  <sub>Built with ❤️ by Brand Communication AI Swarm Team</sub>
  <br>
  <sub>Powered by OpenClaw</sub>
</p>
