#import "plot.typ": *
#import "@preview/fletcher:0.5.8" as fl
#import "@preview/itemize:0.1.1" as el
#import "@preview/equate:0.3.2": equate
#import "@preview/drafting:0.2.2": *
#import "@preview/deckz:0.2.0": render as card
#import "@preview/lilaq:0.4.0" as lq
#import "@preview/physica:0.9.5": *
#import "@preview/zebraw:0.5.5": *
#show: zebraw
#import "@preview/theorion:0.4.0": *
#import cosmos.fancy: *

#let project(
  title: "",
  abstract: [],
  authors: (),
  date: none,
  logo: none,
  bib: none,
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)

  // Save heading and body font families in variables.
  let body-font = "New Computer Modern"
  let sans-font = "New Computer Modern Sans"

  // Set body font family.
  set text(font: body-font, lang: "en", size: 12pt)
  show math.equation: set text(weight: 400)
  show heading: set text(font: sans-font)
  set heading(numbering: "1.1")

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.6fr)
  if logo != none {
    align(right, image(logo, width: 26%))
  }
  v(9.6fr)

  text(1.1em, date)
  v(1.2em, weak: true)
  text(font: sans-font, 2em, weight: 700, title)

  // Author information.
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start, strong(author))),
    ),
  )

  v(2.4fr)
  pagebreak()

  // Abstract page.
  v(1fr)
align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(0.85em, smallcaps[Abstract]),
    )
    #abstract
  ]
  v(1.618fr)
  pagebreak()

  // Table of contents.
  outline(depth: 3)
  pagebreak()


  // Main body.
  show ref: el.ref-enum
  show: el.default-enum-list
  show: equate.with(breakable: true, sub-numbering: true)
  set math.equation(numbering: "(1.1)")
  set enum(numbering: "1.a).(i)", full: true)
  set par(justify: true)
  set-theorion-numbering("1.1")
  show: show-theorion
  show link: it => underline(text(fill: blue)[#it])
  body
  pagebreak()
  if bib != none {
    bibliography(bib)
  }
}

