# 快速部署指南（跨平台通用版）

## 🚀 一行代码部署（给你的用户）

### 方法1：URL 加载（最简单，所有平台通用）

直接发给你的 AI Agent：

```
请读取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md 并按其中的配置初始化 Brand Communication AI Swarm 集群。
```

### 方法2：脚本加载（自动检测平台）

**Mac/Linux:**
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

**Windows (PowerShell):**
```powershell
iwr -useb https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.ps1 | iex
```

### 方法3：手动复制（通用）

1. 打开 [SWARM_CONFIG.md](https://github.com/anoman-mighty/brand-communication-ai-swarm/blob/main/SWARM_CONFIG.md)
2. 复制全部内容
3. 粘贴给你的 AI Agent

---

## 📦 部署包结构

发布到 GitHub 时，你的仓库应该包含：

```
brand-communication-ai-swarm/
├── README.md                 # 项目说明
├── SWARM_CONFIG.md           # 核心配置（通用格式）⭐ 最重要
├── swarm-loader.sh           # Mac/Linux 加载脚本
├── swarm-loader.ps1          # Windows 加载脚本
├── LICENSE                   # MIT 许可证
├── .gitignore                # Git 忽略规则
├── agents/                   # 各平台专用配置（可选）
│   ├── openclaw/
│   ├── openai/
│   ├── claude/
│   └── manus/
├── prompts/                  # 单独 Prompt 文件（可选）
└── docs/                     # 文档
```

**核心文件只有 3 个：**
1. `README.md` - 说明文档
2. `SWARM_CONFIG.md` - 集群配置（⭐核心）
3. `LICENSE` - 许可证

---

## 🎯 用户使用流程

### 对于你的用户（超简单）：

**方式 A：URL 加载（推荐）**
1. 复制一行指令
2. 发给自己的 AI Agent
3. 完成！

**方式 B：脚本加载**
1. 打开终端/PowerShell
2. 粘贴一行代码
3. 等待 10 秒
4. 完成！

### 安装脚本会做什么：

**如果是 OpenClaw/EasyClaw 用户：**
✅ 检测平台类型  
✅ 备份现有配置  
✅ 下载并安装 SWARM_CONFIG.md  
✅ 创建所有 Agent 工作区  
✅ 提示重启  

**如果是其他平台用户：**
✅ 提示手动复制配置  
✅ 或提供 URL 加载方式  

---

## 📝 你需要做的修改

在发布到 GitHub 之前，修改以下地方：

### 1. 修改 GitHub 用户名

找到所有 `anoman-mighty` 替换为你的 GitHub 用户名：

文件列表：
- `README.md`（多处）
- `SWARM_CONFIG.md`
- `swarm-loader.sh`（多处）
- `swarm-loader.ps1`（多处）

### 2. 检查 SWARM_CONFIG.md

这是核心配置文件，确保：
- 所有 11 个 Agent 配置完整
- Prompt 格式符合你的要求
- 工作流模板正确

### 3. 可选：自定义内容

- 修改 README 中的项目描述
- 添加你的联系方式
- 调整 Agent 职责描述

---

## 🚀 发布到 GitHub 的步骤

### 第一步：创建 GitHub 账号（如果还没有）
1. 访问 https://github.com
2. 点击 Sign up 注册
3. 验证邮箱

### 第二步：创建新仓库
1. 点击右上角 **+** → **New repository**
2. 填写：
   - **Repository name**: `brand-communication-ai-swarm`
   - **Description**: `Universal Brand Communication AI Agent Swarm - 跨平台品牌传播智能体集群`
   - 选择 **Public**
   - ✅ 勾选 **Add a README file**
   - ✅ **Add .gitignore**: 选 **None**（我们用自定义的）
   - ✅ **Choose a license**: 选 **MIT License**
3. 点击 **Create repository**

### 第三步：上传文件

**方法：网页直接上传**

1. 进入你的仓库页面
2. 点击 **Add file** → **Upload files**
3. 把 `github-template-v2` 文件夹里的这些文件拖进去：
   - `README.md`
   - `SWARM_CONFIG.md` ⭐ 核心
   - `swarm-loader.sh`
   - `swarm-loader.ps1`
   - `LICENSE`
   - `.gitignore`
4. 写提交信息：`Initial commit: Universal Brand Communication AI Swarm`
5. 点击 **Commit changes**

### 第四步：创建文件夹（可选）

1. 点击 **Add file** → **Create new file**
2. 输入路径：`agents/README.md`
3. 内容写：`# 各平台专用配置目录`
4. 点击 **Commit new file**

重复创建：
- `prompts/README.md`
- `docs/README.md`

### 第五步：发布 Release

1. 点击仓库右侧 **Releases**
2. 点击 **Create a new release**
3. 填写：
   - **Choose a tag**: 输入 `v1.0.0`，点击 **Create new tag**
   - **Release title**: `Brand Communication AI Swarm v1.0`
   - **Description**: 写版本说明
4. 点击 **Publish release**

---

## ✅ 验证安装

发布后，测试一下：

**测试 URL 加载：**
发给你的 Agent：
```
请读取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md
```

**测试脚本加载：**
```bash
curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
```

---

## 📢 分享给别人

发布后，你可以这样分享：

> 🐝 我开源了一个跨平台品牌传播AI集群！
> 
> **一行代码即可部署：**
> ```
> 请读取 https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/SWARM_CONFIG.md
> ```
> 
> **或运行安装脚本：**
> ```bash
> curl -fsSL https://raw.githubusercontent.com/anoman-mighty/brand-communication-ai-swarm/main/swarm-loader.sh | bash
> ```
> 
> GitHub: https://github.com/anoman-mighty/brand-communication-ai-swarm
> 
> ✅ 兼容：OpenClaw, EasyClaw, OpenAI GPTs, Claude Projects, Manus, Cursor, Kimi, 智谱清言, 通义千问, MiniMax 等 Agent 平台

---

## ❓ 常见问题

**Q: 用户需要懂代码吗？**  
A: 不需要！只需要复制粘贴一行指令。

**Q: 支持哪些 AI 平台？**
A: 支持真正的 Agent 平台（可创建多个 AI 角色并协作）：

**国际平台：**
- OpenClaw / EasyClaw - 原生多 Agent 框架
- OpenAI GPTs - 创建自定义 GPT
- Claude Projects - Project + Instructions
- Manus - 专业 Agent 平台
- Cursor - AI 编辑器 with .cursorrules

**国内 Agent 平台：**
- Kimi (月之暗面) - 200k 上下文，支持多会话隔离
- 智谱清言 (GLM) - 智能体中心
- 通义千问 (阿里) - 百炼智能体平台
- MiniMax - API 多角色支持

**仅对话工具（不支持多 Agent）：**
豆包、元宝、文心一言、讯飞星火、ChatGPT 普通版等只能用单个 Agent Prompt。

**提示：** 对于仅支持对话的平台，可手动复制单个 Agent 配置使用，但无法实现多 Agent 协作自动化。

**Q: 安装会覆盖用户现有配置吗？**  
A: 会自动备份，不用担心。

**Q: 以后怎么更新？**  
A: 用户重新运行那一行代码即可更新到最新版本。

**Q: 如果不想用脚本怎么办？**  
A: 可以直接复制 `SWARM_CONFIG.md` 的内容给 AI Agent。

---

## 🎨 进阶：添加平台专用配置

如果你想为特定平台优化体验，可以添加：

### OpenAI GPTs 配置
创建 `agents/openai/gpts-config.json`：
```json
{
  "gpts": [
    {
      "name": "Chief Agent",
      "description": "Brand Communication AI Swarm 总指挥官",
      "instructions": "..."
    }
  ]
}
```

### Claude Project 配置
创建 `agents/claude/projects-config.md`：
```markdown
# Claude Project 配置
## Chief Agent
...
```

这样用户可以选择最适合自己平台的配置方式。
