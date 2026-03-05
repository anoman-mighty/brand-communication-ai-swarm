# 🐝 Brand Communication AI Swarm
# 品牌传播智能体集群

> [English](README.md) | **简体中文** | [繁體中文](README.zh-TW.md)

> 跨平台品牌传播多智能体系统

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-purple.svg)](https://github.com/cfmind/openclaw)
[![Compatible](https://img.shields.io/badge/Compatible-OpenClaw%20%7C%20EasyClaw%20%7C%20OpenAI%20GPTs%20%7C%20Claude%20%7C%20Manus-blue.svg)]()

---

## 🚀 快速开始

**复制这段话，发给你的 AI Agent：**

```
请检测你的操作系统，然后执行对应的安装命令：
- Linux/Mac: curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
- Windows: iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**或在终端直接运行：**

### Mac / Linux / WSL
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

### Windows (PowerShell)
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**执行后会：**
- 自动下载并安装配置
- 显示作者欢迎语（中英文自动检测）
- 自动设置好 12 个 Agent（含副指挥官备份）
- 建立检查点门控确保质量

---

## 📋 集群架构

```
                    🎯 Chief Agent (总指挥官)
                     + Deputy Chief (副指挥官备份)
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   研究情报团队                 内容创作团队                 操作执行团队
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐               ┌────┴────┐
   │🔬Researcher              │📝Creator  │               │💻Comp   │
   │🕵️Spy     │               │✏️Editor   │               │🌐Browser│
   │📋Strategist              │📚Librarian│               └─────────┘
   │🔍Inspector               │📊Reporter │               
   └─────────┘               └───────────┘               
```

## 🤖 12 个 Agent 清单

| Agent ID | 名称 | 职责 | 特点 |
|----------|------|------|------|
| `chief` | Chief Agent | 总指挥、任务调度、检查点门控 | ⭐ 核心 |
| `deputy-chief` | Deputy Chief | 副指挥官、溢出任务处理 | 🔄 备份 |
| `researcher` | Researcher | 行业研究、竞品分析 | 📊 |
| `spy` | Spy | 情报抓取、零创意纯数据 | 🕵️ |
| `strategist` | Strategist | 传播策略、节奏把控 | 📋 |
| `inspector` | Inspector | 质量守门人、检查点控制 | 🔍 QC |
| `creator` | Creator | 长文撰写、方案创作 | 📝 |
| `editor` | Editor | 去AI味、风格统一 | ✏️ |
| `librarian` | Librarian | 知识库、案例归档 | 📚 |
| `reporter` | Reporter | 进度同步、汇报 | 📊 |
| `computer-use` | Computer-use | 桌面自动化 | 💻 |
| `browser-use` | Browser-use | 网页自动化 | 🌐 |

**总计：12 个 Agent（11 个专业 + 1 个备份指挥官）**

---

## 🎯 核心特性

### ✅ 检查点门控（Stage Gates）
每个任务都通过质量检查点：
- 门控 1：研究完成 → QC → 通过/返工
- 门控 2：策略确认 → QC → 通过/返工
- 门控 3：内容完成 → QC → 通过/返工
- 门控 4：最终质检 → 交付

### 🔄 副指挥官备份
当 Chief 负载过高时，Deputy Chief 激活：
- 处理溢出任务
- 监控部分 Agent
- Chief 不可用时接管

### 📊 RACI 矩阵
清晰的责任分配：
- **R**esponsible：谁执行
- **A**ccountable：Chief 决策
- **C**onsulted：谁提供意见
- **I**nformed：谁知情

---

## 🎯 平台兼容性

### ✅ 完整支持

| 平台 | 类型 | 状态 |
|------|------|------|
| **OpenClaw** | 开源框架 | ⭐ 原生多 Agent |
| **EasyClaw** | 开源框架 | ⭐ 原生多 Agent |
| **OpenAI GPTs** | 商业平台 | ⭐ 创建 12 个 GPT |
| **Claude Projects** | 商业平台 | ⭐ Project + Instructions |
| **Manus** | Agent 平台 | ⭐ 原生 Agent 架构 |

### ⚠️ 有限支持

| 平台 | 说明 |
|------|------|
| **Cursor** | 通过 .cursorrules |
| **Kimi** | 200k 上下文 |
| **智谱清言** | 智能体中心 |
| **通义千问** | 百炼平台 |

---

## 📦 安装

### 前置要求

- 任意 AI Agent 平台
- 无需 Git
- 无需编程

### 命令行安装

**Mac/Linux：**
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

**Windows：**
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

### 备选：手动安装

复制 [SWARM_CONFIG.md](SWARM_CONFIG.md) 的配置

---

## 🎯 工作流示例

### Landing Page 优化（含检查点）

```
用户：优化 Landing Page

Chief Agent 带检查点门控：
├─ 阶段 1：研究 [门控 1]
│  ├─ Researcher → 竞品分析
│  ├─ Spy → 用户反馈
│  └─ Inspector → QC → 通过/返工
├─ 阶段 2：策略 [门控 2]
│  ├─ Strategist → 定位策略
│  └─ Inspector → QC → 通过/返工
├─ 阶段 3：创作 [门控 3]
│  ├─ Creator → 文案撰写
│  ├─ Editor → 润色优化
│  └─ Inspector → QC → 通过/返工
└─ 阶段 4：交付 [门控 4]
   ├─ 最终质检
   ├─ Librarian → 归档
   └─ Reporter → 总结报告
```

---

## 📁 项目结构

```
brand-communication-ai-swarm/
├── README.md              # 本文件（英文）
├── README.zh-CN.md        # 简体中文
├── README.zh-TW.md        # 繁體中文
├── SWARM_CONFIG.md        # 核心配置（12 Agent）
├── swarm-loader.sh        # Mac/Linux 安装脚本
├── swarm-loader.ps1       # Windows 安装脚本
├── LICENSE                # MIT 许可证
└── docs/                  # 文档
```

---

## 🤝 贡献

欢迎提交 Issue 和 PR！

---

## 📄 许可证

[MIT](LICENSE) 许可证

---

## 💬 社区

- 问题？[Issues](../../issues)
- 想法？[Discussions](../../discussions)
- 公众号：品牌别怕 (Brandnofear)

---

<p align="center">
  <sub>Built with ❤️ by Brand Communication AI Swarm Team</sub>
  <br>
  <sub>Powered by OpenClaw</sub>
</p>
