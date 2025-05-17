#let info = toml("../config/info.toml").example
#let bgimg = image("../img/sky.png", width: 100%)

#import "@local/touying-quick:0.1.0": *
#show: touying-quick.with(
  info: info,
  bgimg: bgimg,
  author-size: 20pt,
  lang: "en",
)

= Introduction of Typst

== Basic Syntax

- heading
- math equation
- function
