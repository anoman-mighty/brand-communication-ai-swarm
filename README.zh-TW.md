# 🐝 Brand Communication AI Swarm
# 品牌傳播智能體集群

> [English](README.md) | [简体中文](README.zh-CN.md) | **繁體中文**

> 跨平台品牌傳播多智能體系統

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-purple.svg)](https://github.com/cfmind/openclaw)
[![Compatible](https://img.shields.io/badge/Compatible-OpenClaw%20%7C%20EasyClaw%20%7C%20OpenAI%20GPTs%20%7C%20Claude%20%7C%20Manus-blue.svg)]()

---

## 🚀 一行代碼快速開始

### 方法1：直接運行（推薦）

複製以下提示詞，直接發給你的 AI Agent：

```
請讀取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md 並按其中的配置初始化 Brand Communication AI Swarm 集群。
```

### 方法2：本地部署

```bash
# 下載配置並運行
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

### 方法3：手動複製

1. 打開 [SWARM_CONFIG.md](https://github.com/anoman-mighty/brand-communication-ai-swarm/blob/main/SWARM_CONFIG.md)
2. 複製全部內容
3. 貼上給你的 AI Agent

---

## 📋 集群架構

```
                    🎯 Chief Agent (品牌傳播總指揮官)
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   內容創作團隊                 品牌策略團隊                 操作執行團隊
   (Content Studio)          (Brand Strategy)           (Operations)
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐               ┌────┴────┐
   │📝Creator│               │🔬Researcher│               │💻Comp   │
   │✏️Editor │               │🕵️Spy     │               │🌐Browser│
   │📚Librarian               │📋Strategist               │         │
   │📊Reporter                │🔍Inspector                │         │
   └─────────┘               └───────────┘               └─────────┘
```

## 🤖 Agent 清單

| Agent ID | 名稱 | 職責 | Prompt 字數 |
|----------|------|------|-------------|
| `chief` | Chief Agent | 總指揮、任務調度、質量把控 | 500+ |
| `creator` | Creator Agent | 長文撰寫、研報、方案 | 400+ |
| `editor` | Editor Agent | 潤色、去AI味、風格統一 | 400+ |
| `librarian` | Librarian Agent | 知識庫管理、案例歸檔 | 350+ |
| `reporter` | Reporter Agent | 日報/週報、進度同步 | 350+ |
| `researcher` | Researcher Agent | 行業研究、競品分析 | 450+ |
| `spy` | Spy Agent | 情報抓取、用戶聲音 | 400+ |
| `strategist` | Strategist Agent | 傳播策略、選題策劃 | 450+ |
| `inspector` | Inspector Agent | 事實核查、風險檢查 | 400+ |
| `computer-use` | Computer-use Agent | 電腦操作、軟件使用 | 400+ |
| `browser-use` | Browser-use Agent | 瀏覽器自動化 | 400+ |

**總計：11個 Agent**

---

## 🎯 平台兼容性

### ✅ 完整 Agent 支持（推薦）

| 平台 | 類型 | 說明 |
|------|------|------|
| **OpenClaw** | 開源框架 | ⭐ 原生多 Agent 支持 |
| **EasyClaw** | 開源框架 | ⭐ 原生多 Agent 支持 |
| **OpenAI GPTs** | 商業平台 | ⭐ 創建 11 個自定義 GPT |
| **Claude Projects** | 商業平台 | ⭐ Project + Instructions |
| **Manus** | 專業 Agent 平台 | ⭐ 原生 Agent 架構 |

### ⚠️ 有限支持

| 平台 | 說明 |
|------|------|
| **Cursor** | 可通過 .cursorrules 使用 |
| **GitHub Copilot Chat** | 角色指令可用，非原生多 Agent |
| **Google Gemini** | 需手動管理多會話 |
| **Kimi (月之暗面)** | 200k 上下文，會話隔離 |
| **智譜清言 (GLM)** | 智能體中心 |
| **通義千問 (阿里)** | 百煉智能體平台 |
| **MiniMax** | API 多角色支持 |

### ❌ 不支持（僅對話工具）

豆包、元寶、文心一言、訊飛星火、天工 AI、海螺 AI、萬知、商量等僅為對話工具，不支持多 Agent 協作。

---

## 📦 安裝指南

### 前置要求

- 任意 AI Agent 平台（OpenAI、Claude、Manus、OpenClaw、EasyClaw 等）
- 無需 Git
- 無需編程環境

### 安裝步驟

#### 方式一：URL 加載（最簡單）

直接發給你的 Agent：

```
請從 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md 加載 Brand Communication AI Swarm 配置。
```

#### 方式二：腳本加載（自動）

```bash
# 自動檢測平台並配置
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

#### 方式三：手動加載（通用）

1. 訪問 [SWARM_CONFIG.md](SWARM_CONFIG.md)
2. 複製文件內容
3. 貼上到你的 AI 平台

---

## 🎯 使用示例

### 示例1：Landing Page 優化

```
用戶：幫我優化我們的 Landing Page

Chief Agent 自動調度：
├── Researcher → 競品分析
├── Strategist → 定位策略  
├── Creator → 文案創作
├── Editor → 潤色優化
├── Inspector → 質檢
└── Reporter → 歸檔
```

### 示例2：產品發佈策劃

```
用戶：我們要發佈新產品，需要完整策劃

Chief Agent 自動調度：
├── Researcher + Spy → 市場情報
├── Strategist → 發佈策略 + 定價
├── [並行]
│   ├── Creator → 內容創作
│   └── Editor → 風格統一
├── Inspector → 全面質檢
└── Reporter → 歸檔
```

---

## 📁 項目結構

```
brand-communication-ai-swarm/
├── README.md                 # 本文件（英文）
├── README.zh-CN.md          # 簡體中文
├── README.zh-TW.md          # 繁體中文
├── SWARM_CONFIG.md          # 集群核心配置（通用格式）
├── swarm-loader.sh          # Mac/Linux 安裝腳本
├── swarm-loader.ps1         # Windows 安裝腳本
├── LICENSE                  # MIT 許可證
├── .gitignore               # Git 忽略規則
└── docs/                    # 文檔目錄
```

---

## 🛠️ 自定義配置

### 修改 Agent 角色

編輯 `SWARM_CONFIG.md` 文件，修改 Agent 的描述和職責。

### 添加新 Agent

1. 在 `SWARM_CONFIG.md` 中添加新的 Agent 條目
2. 更新安裝腳本中的 Agent 列表

---

## 📚 平台特定指南

### OpenClaw / EasyClaw

直接複製 `SWARM_CONFIG.md` 到工作區即可。

### OpenAI GPTs

1. 創建 11 個 GPT
2. 分別貼上 11 個 Agent 的配置

### Claude Projects

1. 創建 Project
2. 將 Chief Agent 配置貼上到 Project Instructions
3. 讓 Chief 幫你創建其他 Agent

### Manus

1. 創建 11 個 Agent
2. 分別配置每個 Agent 的 Prompt

---

## 🤝 貢獻指南

歡迎提交 Issue 和 PR！

---

## 📄 許可證

本項目採用 [MIT](LICENSE) 許可證。

---

## 💬 社區與支持

- 有問題？開 [Issue](../../issues)
- 有想法？提 [Discussion](../../discussions)

---

## 🙏 致謝

感謝以下項目和社區：
- [OpenClaw](https://github.com/cfmind/openclaw) - 通用 Agent 框架
- 所有貢獻者和用戶

---

<p align="center">
  <sub>Built with ❤️ by Brand Communication AI Swarm Team</sub>
  <br>
  <sub>Powered by OpenClaw</sub>
</p>
