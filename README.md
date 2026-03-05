# 🐝 Brand Communication AI Swarm
# 品牌传播智能体集群

> **English** | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md)

> Universal Multi-Agent System for Brand Communication
> 跨平台品牌传播多智能体系统

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-purple.svg)](https://github.com/cfmind/openclaw)
[![Compatible](https://img.shields.io/badge/Compatible-OpenClaw%20%7C%20EasyClaw%20%7C%20OpenAI%20GPTs%20%7C%20Claude%20%7C%20Manus-blue.svg)]()

---

## 🚀 一行代码快速开始

### 方法1：直接运行（推荐）

复制以下提示词，直接发给你的 AI Agent：

```
请读取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md 并按其中的配置初始化 Brand Communication AI Swarm 集群。
```

### 方法2：本地部署

```bash
# 下载配置并运行
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

### 方法3：手动复制

1. 打开 [SWARM_CONFIG.md](https://github.com/anoman-mighty/brand-communication-ai-swarm/blob/main/SWARM_CONFIG.md)
2. 复制全部内容
3. 粘贴给你的 AI Agent

---

## 📋 集群架构

```
                    🎯 Chief Agent (品牌传播总指挥官)
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   内容创作团队                 品牌策略团队                 操作执行团队
   (Content Studio)          (Brand Strategy)           (Operations)
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐               ┌────┴────┐
   │📝Creator│               │🔬Researcher│               │💻Comp   │
   │✏️Editor │               │🕵️Spy     │               │🌐Browser│
   │📚Librarian               │📋Strategist               │         │
   │📊Reporter                │🔍Inspector                │         │
   │📝Marketing Writer        │🚀Growth Strategist         │         │
   │🤖CRO Specialist          │                           │         │
   └─────────┘               └───────────┘               └─────────┘
```

## 🤖 Agent 清单

| Agent ID | 名称 | 职责 | Prompt 字数 |
|----------|------|------|-------------|
| `chief` | Chief Agent | 总指挥、任务调度、质量把控 | 500+ |
| `creator` | Creator Agent | 长文撰写、研报、方案 | 400+ |
| `editor` | Editor Agent | 润色、去AI味、风格统一 | 400+ |
| `librarian` | Librarian Agent | 知识库管理、案例归档 | 350+ |
| `reporter` | Reporter Agent | 日报/周报、进度同步 | 350+ |
| `researcher` | Researcher Agent | 行业研究、竞品分析 | 450+ |
| `spy` | Spy Agent | 情报抓取、用户声音 | 400+ |
| `strategist` | Strategist Agent | 传播策略、选题策划 | 450+ |
| `inspector` | Inspector Agent | 事实核查、风险检查 | 400+ |
| `computer-use` | Computer-use Agent | 电脑操作、软件使用 | 400+ |
| `browser-use` | Browser-use Agent | 浏览器自动化 | 400+ |

**总计：11个 Agent**

---

## 🎯 平台兼容性

### ✅ 完整 Agent 支持（推荐）

这些平台原生支持多 Agent 或可通过系统提示词实现 Agent 功能：

| 平台 | 类型 | 兼容方式 | 状态 |
|------|------|---------|------|
| **OpenClaw** | 开源框架 | 原生多 Agent 支持 | ⭐ 完美兼容 |
| **EasyClaw** | 开源框架 | 原生多 Agent 支持 | ⭐ 完美兼容 |
| **OpenAI GPTs** | 商业平台 | 创建 11 个自定义 GPT | ⭐ 完美兼容 |
| **Claude Projects** | 商业平台 | Project + Instructions | ⭐ 完美兼容 |
| **Manus** | 专业 Agent 平台 | 创建 11 个 Agents | ⭐ 完美兼容 |
| **Cursor** | AI 编辑器 | .cursorrules + Composer | ⭐ 完美兼容 |
| **Kimi (月之暗面)** | 国产大模型 | 200k 上下文 + 会话隔离 | ✅ 支持 |
| **智谱清言 (GLM)** | 国产大模型 | 智能体中心创建 Agent | ✅ 支持 |
| **通义千问 (阿里)** | 国产大模型 | 百炼平台 + 智能体 | ✅ 支持 |
| **MiniMax** | 国产大模型 | API + 多角色会话 | ✅ 支持 |

### ⚠️ 有限支持

| 平台 | 说明 |
|------|------|
| **GitHub Copilot Chat** | 可通过角色指令使用，但非原生多 Agent |
| **Google Gemini** | 支持长上下文，但需手动管理多会话 |

### ❌ 不支持（仅对话工具）

以下平台**仅为对话工具**，不支持 Agent 功能：
- 豆包、元宝、文心一言、讯飞星火、天工 AI、海螺 AI、万知、商量
- Perplexity、Poe、You.com、Meta AI、ChatGPT（普通版）

> 💡 **提示**：对于仅支持对话的平台，您仍可手动复制单个 Agent 的 Prompt 使用，但无法实现多 Agent 协作。

---

## 📦 安装指南

### 前置要求

- 任意 AI Agent 平台（OpenAI、Claude、Manus、OpenClaw、EasyClaw 等）
- 无需 Git
- 无需编程环境

### 安装步骤

#### 方式一：URL 加载（最简单）

直接发给你的 Agent：

```
请从 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md 加载 Brand Communication AI Swarm 配置。
```

#### 方式二：脚本加载（自动）

```bash
# 自动检测平台并配置
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

#### 方式三：手动加载（通用）

1. 访问 [SWARM_CONFIG.md](SWARM_CONFIG.md)
2. 复制文件内容
3. 粘贴到你的 AI 平台

---

## 🎯 使用示例

### 示例1：Landing Page 优化

```
用户：帮我优化我们的 Landing Page

Chief Agent 自动调度：
├── Researcher → 竞品分析
├── Strategist → 定位策略  
├── Creator → 文案创作
├── Editor → 润色优化
├── Inspector → 质检
└── Reporter → 归档
```

### 示例2：产品发布策划

```
用户：我们要发布新产品，需要完整策划

Chief Agent 自动调度：
├── Researcher + Spy → 市场情报
├── Strategist → 发布策略 + 定价
├── [并行]
│   ├── Creator → 内容创作
│   └── Editor → 风格统一
├── Inspector → 全面质检
└── Reporter → 归档
```

---

## 📁 项目结构

```
brand-communication-ai-swarm/
├── README.md                 # 本文件
├── SWARM_CONFIG.md           # 集群核心配置（通用格式）
├── agents/                   # 各平台专用配置
│   ├── openclaw/
│   │   └── AGENTS.md
│   ├── openai/
│   │   └── gpts-config.json
│   ├── claude/
│   │   └── projects-config.md
│   └── manus/
│       └── agents-config.md
├── swarm-loader.sh          # 通用安装脚本
├── swarm-loader.ps1         # Windows 安装脚本
├── prompts/                 # 单独 Prompt 文件
│   ├── chief.md
│   ├── creator.md
│   └── ...
└── docs/
    ├── setup-guide.md
    ├── platform-specific.md
    └── workflow-examples.md
```

---

## 🛠️ 自定义配置

### 修改 Agent 角色

编辑 `SWARM_CONFIG.md` 文件，修改 Agent 的描述和职责。

### 添加新 Agent

1. 在 `SWARM_CONFIG.md` 中添加新的 Agent 条目
2. 在 `prompts/` 目录创建新的 Agent Prompt 文件
3. 更新 `agents/` 下各平台的配置文件

### 调整工作流

修改 `SWARM_CONFIG.md` 中的工作流模板部分。

---

## 📚 平台特定指南

### OpenClaw / EasyClaw

直接复制 `agents/openclaw/AGENTS.md` 到工作区即可。

### OpenAI GPTs

1. 创建 11 个 GPT
2. 复制 `agents/openai/gpts-config.json` 中的配置
3. 或使用一键导入脚本

### Claude Projects

1. 创建 Project
2. 复制 `agents/claude/projects-config.md` 内容到 Project Instructions

### Manus

1. 创建 11 个 Agent
2. 复制 `agents/manus/agents-config.md` 中的 Prompt

---

## 🤝 贡献指南

欢迎提交 Issue 和 PR！

1. Fork 本仓库
2. 创建 Feature Branch
3. 提交更改
4. 打开 Pull Request

### 添加新平台支持

如果你想添加对新 AI 平台的支持：

1. 在 `agents/` 下创建新目录
2. 添加平台特定的配置文件
3. 更新 README 兼容性表格
4. 提交 PR

---

## 📄 许可证

本项目采用 [MIT](LICENSE) 许可证。

你可以：
- ✅ 自由使用
- ✅ 修改
- ✅ 分发
- ✅ 商用

只需保留原始许可证声明。

---

## 💬 社区与支持

- 有问题？开 [Issue](../../issues)
- 有想法？提 [Discussion](../../discussions)

---

## 🙏 致谢

感谢以下项目和社区：
- [OpenClaw](https://github.com/cfmind/openclaw) - 通用 Agent 框架
- [EasyClaw](https://github.com/cfmind/easyclaw) - Agent 运行环境
- 所有贡献者和用户

---

<p align="center">
  <sub>Built with ❤️ by Brand Communication AI Swarm Team</sub>
  <br>
  <sub>Powered by OpenClaw</sub>
</p>
