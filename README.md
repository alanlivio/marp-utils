# marp-utils

Reusable CSS Grid layout and alignment utilities (`marp-utils.css`) for [Marp](https://marp.app/) slide decks using native Markdown lists and `_class` directives.

## Usage

Import `marp-utils.css` inside your slide deck frontmatter:

```yaml
---
marp: true
style: |
  @import url('https://cdn.jsdelivr.net/gh/alanlivio/marp-utils@v0.1/marp-utils.css');
---
```

Apply layout and modifier classes per slide with `<!-- _class: ... -->` over a native Markdown list:

```markdown
<!-- _class: cols-2 center -->

# Two Columns

- ![](https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=480&h=280&fit=crop)
  Mountain valley landscape

- ![](https://images.unsplash.com/photo-1469474968028-56623f02e42e?w=480&h=280&fit=crop)
  Highland ridge view
```

## Utility Classes

| Class | Description |
| --- | --- |
| `cols-2` | Equal 2-column grid (`1fr 1fr`) |
| `cols-3` | Equal 3-column grid (`1fr 1fr 1fr`) |
| `cols-4` | Equal 4-column grid (`1fr 1fr 1fr 1fr`) |
| `cols-1-2` | Asymmetric 1:2 sidebar and detail split |
| `cols-2-1` | Asymmetric 2:1 detail and sidebar split |
| `cols-1-3` | Asymmetric 1:3 sidebar and detail split |
| `cols-3-1` | Asymmetric 3:1 detail and sidebar split |
| `grid-2x2` | 2x2 grid layout for 4 list items |
| `cards` | Bordered card styling for grid list items |
| `center` | Horizontally centers content inside list items (also strips bullets on standalone lists) |
| `text-center` | Horizontally centers text inside a slide or block |
| `vcenter` | Vertically centers items across columns |
| `spread` | Left/center/right alignment across 3-column items |
| `banner` | Highlighted full-width callout bar for paragraphs |
| `table-fixed` | Full-width fixed-layout Markdown table |
| `green` / `red` / `blue` | Semantic text accent colors |
| `grayscale` | Converts slide or image colors to grayscale |
| `![center](...)` | Horizontally centers a standalone image (`img[alt~="center"]`) |
| `<span>L</span><span>R</span>` | Automatically spaces two-part `header` or `footer` spans at left and right edges |

## Examples

```text
marp-utils/
├── examples/
│   ├── cols_2.md      # Equal 2-column layout
│   ├── cols_3.md      # Equal 3-column layout
│   ├── cols_3b.md     # 3-column Font Awesome icons via Iconify
│   ├── cols_1_3.md    # Asymmetric 1:3 split
│   ├── cols_3_1.md    # Asymmetric 3:1 split
│   ├── grid_2x2.md    # 2x2 image grid
│   └── img_center.md  # Horizontally centered standalone image
└── marp-utils.css     # Core utility stylesheet
```
