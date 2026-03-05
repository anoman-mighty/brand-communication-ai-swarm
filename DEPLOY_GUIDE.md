# 部署指南 v3

## 🚀 快速部署

### 命令行部署（推荐）

**Mac / Linux / WSL：**
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

**Windows (PowerShell)：**
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

**用户给 AI 的指令：**
```
请检测你的操作系统，然后执行对应的安装命令：
- Linux/Mac: curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
- Windows: iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

---

## 📦 v3 文件清单

```
github-template-v3/
├── README.md              # 英文文档（双系统命令）
├── README.zh-CN.md        # 简体中文（双系统命令）
├── README.zh-TW.md        # 繁體中文（双系统命令）
├── SWARM_CONFIG.md        # 核心配置（12 Agent + Deputy Chief + RACI + 检查点）
├── swarm-loader.sh        # Mac/Linux 安装脚本
├── swarm-loader.ps1       # Windows 安装脚本
├── LICENSE                # MIT 许可证
├── .gitignore             # Git 忽略规则
└── DEPLOY_GUIDE.md        # 本文件
```

---

## 📊 RACI 责任矩阵

| 任务阶段 | Chief | Deputy | Research | Content | Ops | QC |
|----------|-------|--------|----------|---------|-----|-----|
| **策略制定** | A | C | R | I | I | I |
| **情报收集** | A | I | R | I | C | I |
| **内容创作** | A | I | C | R | I | I |
| **编辑润色** | A | I | I | R | I | C |
| **质量检查** | A | C | I | I | I | R |
| **执行落地** | A | I | I | C | R | I |
| **汇报归档** | A | C | I | I | I | R |

**图例：** R=执行, A=负责, C=咨询, I=知情

---

## 🎯 检查点门控（Checkpoint Gates）

每个任务必须通过 4 个质量关卡：

```
Gate 1: 研究完成 → Inspector QC → Chief 决策 → 通过/返工
   ↓ 通过
Gate 2: 策略确认 → Inspector QC → Chief 决策 → 通过/返工
   ↓ 通过
Gate 3: 内容完成 → Inspector QC → Chief 决策 → 通过/返工
   ↓ 通过
Gate 4: 最终质检 → Librarian 归档 → Reporter 总结 → 交付
```

---

## 🤖 12 Agent 说明

### 指挥层
- **Chief Agent**: 总指挥，任务调度，检查点门控
- **Deputy Chief**: 副指挥官，溢出处理，备份接管

### 执行层
**研究情报团队：**
- Researcher: 行业研究
- Spy: 情报抓取
- Strategist: 传播策略
- Inspector: 质量检查

**内容创作团队：**
- Creator: 长文撰写
- Editor: 编辑润色
- Librarian: 知识管理
- Reporter: 进度汇报

**操作执行团队：**
- Computer-use: 桌面自动化
- Browser-use: 网页自动化

---

## 📝 GitHub 更新步骤

### 1. 上传所有文件

1. 打开仓库：`https://github.com/anoman-mighty/brand-communication-ai-swarm`
2. 点击 **Add file** → **Upload files**
3. 选择 v3 文件夹中的所有文件
4. 提交信息：`Release v3.0: 12 Agents + Deputy Chief + Checkpoint Gates`
5. 点击 **Commit changes**

### 2. 创建 Release

1. 点击 **Releases** → **Draft a new release**
2. Tag: `v3.0.0`
3. Title: `Brand Communication AI Swarm v3.0`
4. Description:
   ```
   🐝 Brand Communication AI Swarm v3.0

   ## 新特性
   - 12 个智能体（新增 Deputy Chief 备份指挥官）
   - 检查点门控（4 个质量关卡）
   - RACI 责任矩阵
   - 双系统命令行部署（Mac/Linux + Windows）

   ## 快速开始
   Mac/Linux:
   curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash

   Windows:
   iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
   ```
5. 点击 **Publish release**

---

## 📢 分享文案

### 中文

```
🐝 Brand Communication AI Swarm v3.0 发布！

12 个智能体 + 副指挥官备份 + 检查点门控

一行代码部署：
Mac/Linux: curl ... | bash
Windows: iwr ... | iex

GitHub: github.com/anoman-mighty/brand-communication-ai-swarm

求 Star ⭐ 
公众号：品牌别怕
```

---

## ⚠️ 注意事项

1. **换行符**: swarm-loader.sh 必须用 LF (Unix)，不能用 CRLF (Windows)
2. **编码**: 所有文件用 UTF-8
3. **测试**: 发布前在 Mac 和 Windows 都测试一遍

---

## 🔧 故障排除

**错误: `/bin/bash^M: bad interpreter`**
- 原因：换行符是 Windows 格式 (CRLF)
- 解决：重新上传 Unix 格式 (LF) 的文件

**错误: 权限拒绝**
- 解决：`chmod +x swarm-loader.sh`

---

**版本**: v3.0.0  
**日期**: 2026-03-05  
**Agent 数量**: 12 (含 Deputy Chief)
