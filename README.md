# 文化旅游展示平台

## 项目简介
本项目是一个基于 JSP 和现代前端技术的文化旅游展示平台。通过用户登录、动态 3D 地图展示、页面信息传递等功能，为用户提供沉浸式的交互体验。项目以中国地图为核心，展示了多个省份的文化与旅游特色。

---

## 功能特点

### 1. 登录功能
- **目标**：确保用户身份验证的安全性，同时提供“记住我”功能，方便用户免登录访问。
- **技术实现**：
  - 使用 `Session` 管理用户登录状态。
  - 使用 `Cookie` 存储用户的用户名和密码，实现 7 天内自动登录。
- **操作流程**：
  - 用户在登录页面输入用户名和密码。
  - 后端验证用户身份，验证通过后跳转到主页面，否则返回登录页面并提示错误信息。

### 2. 3D 地图动态展示
- **目标**：通过 3D 动态地图呈现中国文化旅游的魅力，提升用户的视觉体验和交互感。
- **技术实现**：
  - 使用 `Three.js` 渲染中国地图模型，支持鼠标悬停高亮、点击跳转等交互功能。
  - 使用 `d3-geo` 进行地理数据投影，将地理坐标转换为平面坐标。
  - 动态加载地图数据（`ChinaMap.json`），为省份定义特定颜色和交互逻辑。

### 3. 页面动态效果
- **目标**：通过动态背景、动画切换等方式增强用户体验。
- **技术实现**：
  - 使用 CSS 动画实现页面背景的渐变、按钮动态响应等效果。
  - 提供鼠标交互提示功能（如显示省份名称），并通过 `JavaScript` 动态更新页面元素。

---

## 技术栈
- **后端**：
  - JSP：动态页面生成与逻辑处理。
  - Session & Cookie：用户状态管理。
- **前端**：
  - HTML5 & CSS3：页面布局与动画设计。
  - JavaScript：
    - Three.js：3D 地图渲染与交互。
    - DOM 操作：动态更新页面内容。
- **数据处理**：
  - `d3-geo`：地理数据投影与处理。
  - JSON 文件：地图数据加载与解析。

---

## 部署指南

1. **准备环境**：
   - 安装 Tomcat（推荐版本 9.0 或更高）。
   - 确保本地已配置 JDK 环境。

2. **导入项目**：
   - 将项目文件放入 Tomcat 的 `webapps` 目录下。

3. **运行项目**：
   - 启动 Tomcat 服务器。
   - 在浏览器中访问 [http://localhost:8080/lab2/index.jsp](http://localhost:8080/lab2/index.jsp)。

4. **注意事项**：
   - 确保地图数据（`ChinaMap.json`）路径正确。
   - 如果登录后未跳转，请检查浏览器的 `Cookie` 设置。

---

## 实验过程中的问题及解决

1. **地图数据加载失败**：
   - **原因**：JSON 文件路径错误或数据格式不匹配。
   - **解决**：校验文件路径，并为加载逻辑添加错误捕获机制。

2. **鼠标交互失效**：
   - **原因**：`Three.js` 射线检测未正确处理嵌套几何体。
   - **解决**：优化射线检测逻辑，增加对嵌套对象的支持。

3. **动态背景动画卡顿**：
   - **原因**：动画范围过大，影响浏览器渲染性能。
   - **解决**：减少渐变范围，并优化动画刷新频率。

4. **跨页面状态丢失**：
   - **原因**：用户登录状态仅存储在 `Session` 中。
   - **解决**：结合使用 `Session` 和 `Cookie`，确保登录状态在页面跳转中保持一致。

---

## 收获与心得

1. **收获**：
   - 理解了 JSP 的内置对象（如 `Request`、`Response` 和 `Session`）在 Web 开发中的作用。
   - 熟练使用 `Three.js` 构建动态交互的 3D 地图。
   - 掌握了前后端结合实现页面动态效果和跨页面信息传递的技巧。

2. **心得**：
   - 技术的整合能力至关重要，本次实验让我体会到每种技术在特定场景下的优势。
   - 性能优化与用户体验需要兼顾，特别是在涉及动画和三维渲染时，需要平衡效果与资源消耗。
   - 通过解决问题积累经验，不仅提升了开发能力，也对 Web 应用开发产生了更浓厚的兴趣。

---

