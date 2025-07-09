#import "referable.typ": *
#import "utils.typ": *

#let touying-quick(
  title: "",
  subtitle: "",
  author-size: 14pt,
  footer-size: 10pt,
  bgimg: image("../config/sky.png", width: 100%),
  info: default-info,
  styles: default-styles,
  names: default-names,
  lang: "en",
  doc,
) = {
  let lang = info.lang
  let author = info.author
  let institution = info.institution
  let footer = info.footer
  let ending = info.ending

  let indent-base = 1.2em

  set block(above: 1em, below: 0.5em)
  set list(indent: indent-base)
  set enum(indent: indent-base)

  set page(background: bgimg)

  set par(
    first-line-indent: 2em,
    justify: true,
    leading: 1em,
    linebreaks: "optimized",
  )

  set text(font: styles.fonts.at(lang).context, size: 10.5pt, lang: lang)

  show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    it
  }
  show math.equation: equation-numbering-style
  show ref: ref-style.with(lang: lang, names: names)
  show figure: figure-supplement-style
  show figure.where(kind: table): set figure.caption(position: top)
  show raw.where(block: true): code-block-style

  show link: underline

  show: metropolis-theme.with(
    aspect-ratio: "16-9",
    footer: text(footer, size: footer-size, font: styles.fonts.at(lang).footer),
    config-info(
      title: text(title, size: 40pt),
      subtitle: subtitle,
      author: text(
        author,
        size: author-size,
        font: styles.fonts.at(lang).author,
      ),
      date: datetime.today(),
      institution: institution,
      logo: emoji.school,
    ),
    config-colors(
      primary-light: rgb("#fcbd00"),
      secondary: rgb("#3297df"),
      secondary-light: rgb("#ff0000"),
      neutral-lightest: rgb("#ffffff"),
      neutral-dark: rgb("#3297df"),
    ),
  )

  set-inherited-levels(1)
  show: show-theorion

  title-slide()
  outline(title: names.sections.at(lang).outline, indent: 2em, depth: 1)
  doc

  slide(align: center + horizon)[
    #text(ending, font: styles.fonts.at(lang).ending, size: 50pt)
  ]
}
