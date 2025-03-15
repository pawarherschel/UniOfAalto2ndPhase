#import "@preview/grape-suite:2.0.0": *
#import "@preview/wordometer:0.1.4": word-count, total-words

#let t = state("t", false)

#let master-layout(
  abstract: none,
  subtitle: [],
  exercise-prompt: [],
  rest: (),
  content,
) = {
  set text(lang: "en")
  set page(numbering: "1")
  set math.equation(numbering: "~ Eq 1")
  set par(linebreaks: "optimized")
  set block(breakable: true)
  show table.cell: set text(hyphenate: false)
  show table.cell: set par(justify: false)
  show table: it => align(center)[#it]

  let title = [
    Re:Build Nature
    #if subtitle != [] { [--- #subtitle] }
    #context if not t.get() {
      text(font: "JetBrainsMono NF", size: 0.8em)[(WC: #total-words)]
    }
  ]

  context if not t.get() {
    text(size: 2em, title)

    exercise-prompt

    outline()

    pagebreak(weak: true)
  }

  exercise.project(
    title: title,
    type: "homework",
    abstract: abstract,
    show-outline: false,
    date: datetime(year: 2025, month: 3, day: 4),
    author: "Herschel Pawar",
    header-left: block(width: 180%)[
      #grid(
        rows: 3,
        columns: 2,
        // stroke: 1pt,
        align: left,
        column-gutter: 0.3em,
        row-gutter: 0.7em,
        "Link to Repository:",
        link("https://github.com/pawarherschel/UniOfAalto2ndPhase")[GitHub:pawarherschel/UniOfAalto2ndPhase],

        "Link to Source File:",
        link("https://github.com/pawarherschel/UniOfAalto2ndPhase/blob/master/HerschelPawar.typ")[GitHub:pawarherschel/UniOfAalto2ndPhase:HerschelPawar.typ],

        "Link to PDF:",
        link("https://github.com/pawarherschel/UniOfAalto2ndPhase/blob/master/HerschelPawar.pdf")[GitHub:pawarherschel/UniOfAalto2ndPhase:HerschelPawar.pdf],
      )
    ],
    page-margins: (bottom: 5em),
    footer-left: align(left)[
      Herschel Pravin Pawar\
      402, Siddhi Belleza, Sector 35D,\
      Kharghar - 410210, India
    ],
    footer-right: block(width: 100%)[
      #align(right)[
        #block[
          #align(left)[
            Phone Number: +918310783472\
            email: pawarherschel\@gmail.com
          ]
        ]
      ]
    ],
    ..rest,
    [
      #set list(indent: 0.25em)
      #set enum(indent: 0.25em)

      #word-count[
        #text(
          size: 0em,
          abstract,
        )

        #content
      ]

      #pagebreak(weak: true)
    ],
  )
}

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

#let with(show-exercise: bool, exercise: content, body) = {
  if show-exercise {
    exercise
  }

  body
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
