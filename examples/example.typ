#import "@local/touying-quick:0.1.0": *

#let info = toml("../0.1.0/config/info.toml").example

#show: touying-quick.with(
  title: "Writting A Slide Template",
  subtitle: "Typst for Academic Reports",
  lang: "en",
)

= Introduction of Typst

== Basic Syntax

- heading
- math equation
- function
