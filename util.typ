#let design-note(bottom: false, comment: [], content) = {
  set par(justify: true)
  set text(hyphenate: true)

  grid(
    columns: if bottom { 1 } else { 2 },
    column-gutter: if bottom { 0em } else { 1em },
    rows: if bottom { 2 } else { 1 },
    row-gutter: if bottom { 1em } else { 2em },
    box(
      width: 100%,
      {
        set par(justify: true)
        set text(hyphenate: true)

        content
      },
    ),
    {
      set par(justify: true)
      set text(hyphenate: true)

      if bottom {
        rect(fill: luma(240), width: 100%)[
          *Design Note:* #comment
        ]
      } else {
        rect(width: 13em, fill: luma(240))[
          *Design Note:* #comment
        ]
      }
    },
  )
}

#let explanation(detail: [], content) = grid(
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

#let youtube-link(title: str, creator: str, video-link: str) = {
  block[
    "#link(video-link)[#title]" --- #creator\
    Link to the video: #link(video-link)
  ]
}

#let photo-gallery(
  columns: 3,
  imgs: ((),),
) = grid(
  columns: columns,
  row-gutter: 0.4em,
  column-gutter: 0.2em,

  ..{
    imgs.map(it => {
      let (path, caption, label-text) = it

      [
        #figure(
          image(
            path,
            width: 100%,
            height: 1fr,
            fit: "contain",
          ),
          caption: caption,
          kind: "Photo",
          supplement: "Photo",
        ) #label(label-text)
      ]
    })
  }
)
