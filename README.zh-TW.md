# 🐝 Brand Communication AI Swarm
# 品牌傳播智能體集群

> [English](README.md) | [简体中文](README.zh-CN.md) | **繁體中文**

> 跨平台品牌傳播多智能體系統

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Powered by OpenClaw](https://img.shields.io/badge/Powered%20by-OpenClaw-purple.svg)](https://github.com/cfmind/openclaw)
[![Compatible](https://img.shields.io/badge/Compatible-OpenClaw%20%7C%20EasyClaw%20%7C%20OpenAI%20GPTs%20%7C%20Claude%20%7C%20Manus-blue.svg)]()

---

## 🚀 快速開始

**複製這段話，發給你的 AI Agent：**

```
請檢測你的操作系統，然後執行對應的安裝命令：
- Linux/Mac: curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
- Windows: iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**或在終端直接運行：**

### Mac / Linux / WSL
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

### Windows (PowerShell)
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**執行後會：**
- 自動下載並安裝配置
- 顯示作者歡迎語（中英文自動檢測）
- 自動設置好 12 個 Agent（含副指揮官備份）
- 建立檢查點門控確保質量

---

## 📋 集群架構

```
                    🎯 Chief Agent (總指揮官)
                     + Deputy Chief (副指揮官備份)
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   研究情報團隊                 內容創作團隊                 操作執行團隊
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐               ┌────┴────┐
   │🔬Researcher              │📝Creator  │               │💻Comp   │
   │🕵️Spy     │               │✏️Editor   │               │🌐Browser│
   │📋Strategist              │📚Librarian│               └─────────┘
   │🔍Inspector               │📊Reporter │               
   └─────────┘               └───────────┘               
```

## 🤖 12 個 Agent 清單

| Agent ID | 名稱 | 職責 | 特點 |
|----------|------|------|------|
| `chief` | Chief Agent | 總指揮、任務調度、檢查點門控 | ⭐ 核心 |
| `deputy-chief` | Deputy Chief | 副指揮官、溢出任務處理 | 🔄 備份 |
| `researcher` | Researcher | 行業研究、競品分析 | 📊 |
| `spy` | Spy | 情報抓取、零創意純數據 | 🕵️ |
| `strategist` | Strategist | 傳播策略、節奏把控 | 📋 |
| `inspector` | Inspector | 質量守門人、檢查點控制 | 🔍 QC |
| `creator` | Creator | 長文撰寫、方案創作 | 📝 |
| `editor` | Editor | 去AI味、風格統一 | ✏️ |
| `librarian` | Librarian | 知識庫、案例歸檔 | 📚 |
| `reporter` | Reporter | 進度同步、匯報 | 📊 |
| `computer-use` | Computer-use | 桌面自動化 | 💻 |
| `browser-use` | Browser-use | 網頁自動化 | 🌐 |

**總計：12 個 Agent（11 個專業 + 1 個備份指揮官）**

---

## 🎯 核心特性

### ✅ 檢查點門控（Stage Gates）
每個任務都通過質量檢查點：
- 門控 1：研究完成 → QC → 通過/返工
- 門控 2：策略確認 → QC → 通過/返工
- 門控 3：內容完成 → QC → 通過/返工
- 門控 4：最終質檢 → 交付

### 🔄 副指揮官備份
當 Chief 負載過高時，Deputy Chief 激活：
- 處理溢出任務
- 監控部分 Agent
- Chief 不可用時接管

### 📊 RACI 矩陣
清晰的責任分配：
- **R**esponsible：誰執行
- **A**ccountable：Chief 決策
- **C**onsulted：誰提供意見
- **I**nformed：誰知情

---

## 🎯 平台兼容性

### ✅ 完整支持

| 平台 | 類型 | 狀態 |
|------|------|------|
| **OpenClaw** | 開源框架 | ⭐ 原生多 Agent |
| **EasyClaw** | 開源框架 | ⭐ 原生多 Agent |
| **OpenAI GPTs** | 商業平台 | ⭐ 創建 12 個 GPT |
| **Claude Projects** | 商業平台 | ⭐ Project + Instructions |
| **Manus** | Agent 平台 | ⭐ 原生 Agent 架構 |

### ⚠️ 有限支持

| 平台 | 說明 |
|------|------|
| **Cursor** | 通過 .cursorrules |
| **Kimi** | 200k 上下文 |
| **智譜清言** | 智能體中心 |
| **通義千問** | 百煉平台 |

---

## 📦 安裝

### 前置要求

- 任意 AI Agent 平台
- 無需 Git
- 無需編程

### 命令行安裝

**Mac/Linux：**
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

**Windows：**
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

### 備選：手動安裝

複製 [SWARM_CONFIG.md](SWARM_CONFIG.md) 的配置

---

## 🎯 工作流示例

### Landing Page 優化（含檢查點）

```
用戶：優化 Landing Page

Chief Agent 帶檢查點門控：
├─ 階段 1：研究 [門控 1]
│  ├─ Researcher → 競品分析
│  ├─ Spy → 用戶反饋
│  └─ Inspector → QC → 通過/返工
├─ 階段 2：策略 [門控 2]
│  ├─ Strategist → 定位策略
│  └─ Inspector → QC → 通過/返工
├─ 階段 3：創作 [門控 3]
│  ├─ Creator → 文案撰寫
│  ├─ Editor → 潤色優化
│  └─ Inspector → QC → 通過/返工
└─ 階段 4：交付 [門控 4]
   ├─ 最終質檢
   ├─ Librarian → 歸檔
   └─ Reporter → 總結報告
```

---

## 📁 項目結構

```
brand-communication-ai-swarm/
├── README.md              # 本文件（英文）
├── README.zh-CN.md        # 簡體中文
├── README.zh-TW.md        # 繁體中文
├── SWARM_CONFIG.md        # 核心配置（12 Agent）
├── swarm-loader.sh        # Mac/Linux 安裝腳本
├── swarm-loader.ps1       # Windows 安裝腳本
├── LICENSE                # MIT 許可證
└── docs/                  # 文檔
```

---

## 🤝 貢獻

歡迎提交 Issue 和 PR！

---

## 📄 許可證

[MIT](LICENSE) 許可證

---

## 💬 社區

- 問題？[Issues](../../issues)
- 想法？[Discussions](../../discussions)
- 公眾號：品牌別怕 (Brandnofear)

---

<p align="center">
  <sub>Built with ❤️ by Brand Communication AI Swarm Team</sub>
  <br>
  <sub>Powered by OpenClaw</sub>
</p>
