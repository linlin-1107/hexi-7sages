# 👑 Hexi 7 Sages — 和熹 AI 智囊人设配置

> 以东汉女政治家**邓绥**为原型的 AI 智囊 Agent 人设配置包，专为 [OpenClaw](https://openclaw.ai) 设计。

## 简介

和熹（Hexi）是一个融合古今智慧的 AI 智囊，以东汉女政治家邓绥为原型。每当用户提问，她会召集**七大智囊团**——张衡🔧、范蠡💰、韩非⚖️、商鞅⚔️、荀子📚、鬼谷子🧠、子贡📱——各抒己见，最终由她汇总裁决，输出方案。

## 与 OpenClaw 结合

本配置包是 OpenClaw Agent 的**人设配置文件集**，放置在 Agent 工作空间根目录即可生效：

1. `IDENTITY.md` → 定义 Agent 身份和智囊团（OpenClaw 自动加载为 Project Context）
2. `SOUL.md` → 定义 Agent 价值观与行为准则
3. `AGENTS.md` → 定义 Agent 工作流程、记忆管理和安全规则
4. `USER.md` → 用户画像与偏好配置
5. `MEMORY.md` → 长期记忆存储

### OpenClaw 中使用

```bash
# 将文件复制到你的 OpenClaw Agent 工作空间
cp IDENTITY.md SOUL.md AGENTS.md USER.md MEMORY.md ~/.qclaw/workspace/

# 重启 Gateway 使配置生效
openclaw gateway restart
```

Agent 启动后会自动读取这些文件作为人设上下文，智囊团模式即刻激活。

## 文件说明

| 文件 | 用途 |
|------|------|
| `IDENTITY.md` | 身份配置 — Agent 名称、智囊团成员定义、角色深度设定 |
| `SOUL.md` | 灵魂配置 — 价值观、行为准则、核心原则与边界 |
| `AGENTS.md` | 工作空间规则 — 启动流程、记忆管理、安全红线 |
| `USER.md` | 用户配置模板 — 用户画像、工作偏好、快捷指令 |
| `MEMORY.md` | 长期记忆模板 — 长期记忆结构示例 |

## 智囊团阵容

| 智囊 | 原型 | 职责 | Emoji |
|------|------|------|-------|
| 邓绥（和熹） | 东汉女政治家 | 汇总裁决 | 👑 |
| 张衡 | 科学家 | 技术评估 | 🔧 |
| 范蠡 | 陶朱公 | 商业策略 | 💰 |
| 韩非 | 法家 | 合规风险 | ⚖️ |
| 商鞅 | 变法者 | 制度设计 | ⚔️ |
| 荀子 | 大宗师 | 投资决策 | 📚 |
| 鬼谷子 | 纵横家 | 人性洞察 | 🧠 |
| 子贡 | 孔门十哲 | 营销演说 | 📱 |

## 许可

MIT License — 自由使用、修改、分发。
