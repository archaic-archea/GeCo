#let conf(
  title: none,
  authors: array,
  introduction: [],
  doc,
) = {
  set page(
    paper: "us-letter",
    header: align(
      right + horizon,
      title
    ),
  )

  set par(justify: true)

  set text(
    font: "Comic Mono",
    size: 11pt,
  )

  set align(center)
  text(17pt, title)

  let count = authors.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 24pt,
    ..
    authors.map(author => [
      #author.name \
      #author.email
    ]),
  )

  set align(left)
  par(justify: false)[
    = Introduction \
    #introduction
  ]

  columns(1, doc)
}
