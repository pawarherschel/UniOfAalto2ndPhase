#let design-note(bottom: false, comment: [], content) = grid(
  columns: if bottom { 1 } else { 2 },
  column-gutter: if bottom { 0em } else { 1em },
  rows: if bottom { 2 } else { 1 },
  row-gutter: if bottom { 1em } else { 2em },
  box(width: 100%, content),
  if bottom {
    rect(fill: luma(240))[
      *Design Note:* #comment
    ]
  } else {
    rect(width: 10em, fill: luma(240))[
      *Design Note:* #comment
    ]
  },
)

#let explaination(detail: [], content) = grid(
  columns: 2,
  rows: 1,
  content,
  box(width: 1fr)[
    #align(right)[
      #text(luma(120))[
        #detail
      ]
    ]
  ],
)
