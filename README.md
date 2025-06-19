# flutter_show

1.  **数据驱动UI**：我们定义一个数据模型来描述每一个UI项（它的标题、图标、目标页面等），整个App根据这个数据模型列表来构建。
2.  **关注点分离**：将数据（`data`）、模型（`models`）、屏幕（`screens`）、可复用组件（`widgets`）和具体的UI展示案例（`showcases`）分离开来，存放在不同的文件夹中。
3.  **可复用性**：创建可复用的列表页面和详情页面，避免重复编写代码。

当你未来想添加新的UI时，你只需要：
1.  创建一个新的UI展示`Widget`。
2.  在数据文件中添加一行新数据指向这个`Widget`。
3.  **完成！App会自动更新，无需修改任何现有的页面逻辑。**

---

### 1. 项目文件结构

首先，我们规划一下项目的目录结构，这对于保持代码整洁至关重要。

```
lib/
├── data/
│   └── ui_items_data.dart   # 存放所有UI项的静态数据
├── main.dart                # App入口
├── models/
│   └── ui_item.dart         # 定义UI项的数据模型
├── screens/
│   ├── home_screen.dart       # 主屏幕（其实是UIListScreen的一个实例）
│   ├── ui_detail_screen.dart  # 用于展示具体UI Widget的通用屏幕
│   └── ui_list_screen.dart    # 可复用的列表屏幕
├── showcases/               # 存放所有具体的UI展示案例
│   ├── buttons/
│   │   └── button_showcase.dart
│   └── cards/
│       └── card_showcase.dart
└── widgets/
    └── ui_item_card.dart      # 列表中的卡片组件
```

---

### 2. 代码实现

现在，我们一步步创建这些文件。

#### 第1步：数据模型 (`lib/models/ui_item.dart`)

这个模型是整个结构的核心。它定义了一个UI项应该包含哪些信息，并且巧妙地通过 `targetWidget` 和 `subItems` 来区分两种不同的点击行为。

#### 第2步：具体的UI展示案例 (`lib/showcases/...`)

这些是你真正要展示的UI界面。我们先创建两个简单的例子。

**按钮展示 (`lib/showcases/buttons/button_showcase.dart`)**



**卡片展示 (`lib/showcases/cards/card_showcase.dart`)**

#### 第3步：UI项数据源 (`lib/data/ui_items_data.dart`)

这里是添加新UI项最关键的地方。你可以在这个列表里定义所有UI的层级关系。



#### 第4步：可复用的卡片组件 (`lib/widgets/ui_item_card.dart`)

这个Widget负责渲染列表中的每一个卡片，并处理点击导航逻辑。

#### 第5步：可复用的屏幕 (`lib/screens/...`)

**UI列表屏幕 (`lib/screens/ui_list_screen.dart`)**

这个屏幕可以用来显示任何 `UIItem` 列表，无论是主列表还是子列表。

**UI详情屏幕 (`lib/screens/ui_detail_screen.dart`)**

这是一个通用的容器，用于承载任何具体的UI展示Widget。



**主屏幕 (`lib/screens/home_screen.dart`)**

主屏幕现在变得非常简单，它只是 `UIListScreen` 的一个特例。



#### 第6步：App入口 (`lib/main.dart`)

最后，我们把所有东西在 `main.dart` 中组装起来。



---

### 如何添加新的UI？

现在，假设你想添加一个新的顶级UI类别，比如 "滑块 (Sliders)"。

1.  **创建Showcase**: 在 `lib/showcases/`下创建`sliders/slider_showcase.dart`文件，并编写一个展示各种`Slider`的`StatelessWidget`，例如叫 `SliderShowcase`。

2.  **更新数据源**: 打开 `lib/data/ui_items_data.dart`。
    *   首先 `import` 你的新 `SliderShowcase`。
    *   然后在 `mainUIItems` 列表中添加一个新的 `UIItem`：

    ```dart
    // 在文件顶部
    import '../showcases/sliders/slider_showcase.dart'; 
    
    // ... 在列表中
    final List<UIItem> mainUIItems = [
      // ... 已有的项
      UIItem(
        title: '滑块 (Sliders)',
        description: '连续和离散的滑块组件。',
        icon: Icons.tune,
        targetWidget: const SliderShowcase(),
      ),
    ];
    ```

3.  **重新运行App**。新的 "滑块" 卡片就会自动出现在主屏幕上，并且可以点击进入你刚创建的 `SliderShowcase` 页面。

