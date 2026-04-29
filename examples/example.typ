#import "@local/touying-quick:0.1.0": *

#let info = toml("../0.1.0/config/info.toml").example

#show: touying-quick.with(
  title: "Writing a Slide Template",
  subtitle: "Typst for Academic Reports",
  info: info,
  theme: "blue",
  bgimg: bgsky,
  heading-idx: true,
  supplement: [
    == Backup Slide

    Supplementary slides are displayed after the ending slide.
  ],
)

= Introduction to Typst

== Why Typst?

- Markup is concise and readable.
- Math and layout share the same source file.
- Templates can keep reports visually consistent.

== Basic Syntax

Use headings to structure slides:

```typst
= Section

== Slide

=== Subslide
```

Use `#show: touying-quick.with(...)` once at the top of the deck.

= Academic Content

== Equation References

Labeled equations receive slide-friendly numbering.

$
  V(s) = max_a sum_(s') P(s' | s, a) (R(s, a, s') + gamma V(s'))
$ <bellman>

See @bellman for the recursive value equation.

== Tables

#let data = (
  ("Tool", "Purpose"),
  ("Typst", "Typesetting"),
  ("Touying", "Slides"),
  ("Touying Quick", "Academic reports"),
)

#figure(
  tableq(data, 2),
  caption: "Template Building Blocks",
  supplement: "Table",
  kind: table,
)

== Code Blocks

#code(
  read("../0.1.0/typst.toml"),
  lang: "toml",
  width: 92%,
)

= Closing

== Summary

- `touying-quick` creates the title, outline, and ending slides.
- TOML files control metadata, labels, colors, fonts, and spacing.
- Supplementary content can be appended after the ending slide.
