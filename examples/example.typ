#import "@local/touying-quick:0.1.0": *

#let info = toml("../config/info.toml").example
#let bgimg = image("../examples/sky.png", width: 100%)

#show: touying-quick.with(
  title: "Writting A Slide Template",
  subtitle: "Typst for Academic Reports",
  bgimg: bgimg,
  author-size: 20pt,
  lang: "en",
)

= Introduction of Typst

== Basic Syntax

- heading
- math equation
- function
