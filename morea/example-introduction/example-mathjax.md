---
title: "MathJax Example"
published: true
morea_id: example-mathjax
morea_type: experience
morea_summary: "Example page illustrating MathJax"
morea_sort_order: 6
---

# MathJax Example

This page demonstrates the use of [MathJax](https://www.mathjax.org) for rendering mathematical notation in markdown files.

For example, the following markdoswn:

```
When \\(a \ne 0\\), there are two solutions to \\(ax^2 + bx + c = 0\\) and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$
```

when rendered, produces the following text:

When \\(a \ne 0\\), there are two solutions to \\(ax^2 + bx + c = 0\\) and they are
$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$

You can also create a block of math using the `\\[` delimiter. For example, the following markdown:

```
\\[ \frac{1}{n^{2}} \\]
```

Produces the following block:

\\[ \frac{1}{n^{2}} \\]
