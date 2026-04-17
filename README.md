# 湖南大学研究生论文最新 LaTeX 模板


本项目依据《湖南大学研究生学位论文或实践成果撰写规范》（湖大研字〔2025〕17号，2025年4月）编写，并在原项目基础上进行适配与扩展。

> ⚠️ 说明：模板已尽可能对齐官方规范，但不保证 100% 完全一致，请在最终提交前自行核验。

---

## 项目特点

- **规范适配**  
  基本符合 2025 版论文格式要求（页边距、字号、行距、页眉双线等）

- **多类型支持**  
  - `master`：硕士论文  
  - `doctor`：博士论文  

- **匿名盲审支持**
  - 提供 `anonymous` 选项，一键隐藏作者及导师信息  

- **工程优化**
  - 支持 `latexmk` 自动编译
  - 支持输出目录分离（`output/`）
  - 项目结构模块化

---

## 快速开始

### 1. 环境要求

- 推荐发行版：
  - TeX Live 2023+
  - 或 MiKTeX（最新版）

- 推荐编辑器：
  - VS Code + LaTeX Workshop 插件

---

### 2. 编译方式

#### 方法一（推荐）

```bash
latexmk -xelatex -shell-escape main.tex
```

#### 方法二（手动编译）
```bash
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

VS Code 使用：
打开项目文件夹 → 打开终端（Ctrl + `） → 执行上述命令
或使用 LaTeX Workshop（Ctrl + Alt + B）

### 3. 匿名盲审设置

在 main.tex 中，想要哪个版本就注释掉另一个版本即可（匿名盲审版本还需要注释致谢）：

#### 普通版本
```bash
\documentclass[master]{hnuthesis}
```
#### 匿名版本
```bash
\documentclass[master,anonymous]{hnuthesis}
```

## 项目结构
<pre>
.
├── main.tex              # 主文件（编译入口）
├── chapters/             # 论文章节
├── figures/              # 图片资源
├── output/               # 编译输出目录
├── references.bib        # 参考文献数据库
├── hnuthesis.cls         # 模板核心类文件
└── hnunumerical.bst      # BibTeX 样式文件

</pre>
## 字体说明
* 中文：宋体（SimSun）
* 标题：黑体（SimHei）
* 英文：Times New Roman

Windows 系统通常已自带上述字体。

## 论文格式要点（简要）
### 页面设置
* A4：210mm × 297mm
* 上/下：25mm
* 左/右：30mm
* 页眉/页脚：10mm
* 行距：20 磅

### 字体与排版
* 章标题：小二号黑体
* 一级标题：小三号黑体
* 二级标题：四号黑体
* 三级标题：小四号黑体
* 正文：小四号宋体（英文 Times New Roman）
* 首行缩进：2 字符
* 对齐方式：两端对齐

### 页眉规则
* 奇数页：湖南大学博/硕士学位论文
* 偶数页：论文标题
* 页眉双线：1.0pt + 0.5pt

页眉与双线距离可在 hnuthesis.cls 中调整：
```bash
\newcommand\hnu@makeheadrule{%
  \vbox to 15pt{%       
    \vskip -3pt % 这里的数值控制“文字底部”到“第一条线”的距离（可微调）
    \hrule\@height 1.0pt \@width\headwidth
    \vskip 1pt
    \hrule\@height 0.5pt \@width\headwidth
    \vfil
  }%
}
```

## 常见问题
### 编译失败
* 确认使用 xelatex
* 检查字体是否存在


### 文献不显示
需完整编译流程：
```bash
xelatex → bibtex → xelatex → xelatex
```

### 图片不显示
* 检查路径是否正确
* 推荐使用 .pdf/.png/.jpg
* 不推荐使用.eps，Latex默认不支持该格式文件

可使用epstopdf指令将.eps转换为.pdf
```bash
epstopdf *.eps 
```

## 致谢与来源

本项目基于以下开源项目修改：
https://github.com/yusanshi/hnuthesis
原作者：yusanshi

