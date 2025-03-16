#import "util.typ": *

#show: master-layout.with(subtitle: [Outlines and Lists])

#outline(title: "Outline")

#outline(
  target: figure.where(kind: table),
  title: [= List of Tables],
)

#outline(
  target: figure.where(kind: image),
  title: [= List of Figures],
)

#outline(
  target: figure.where(kind: "Photo"),
  title: [= List of Photos],
)

#context if not t.final() {
  [= dummy 1]
  [#link("dummy.com")[dummy 1] <links>]
  [== dummy 2]
  [#link("dummy.com")[dummy 2] <links>]
  [=== dummy 3]
  [#link("dummy.com")[dummy 3] <links>]
  [= dummy 4]
}

#show outline.where(title: [= List of Links]): it => context {
  let links = query(<links>).map(link => (
    dest: link.dest,
    body: link.body,
    location: link.location(),
  ))

  [
    = List of Links
    #for (level, (dest, body, location)) in links.enumerate(start: 1) {
      [
        + #body: #link(dest) #box(width: 1fr, repeat(gap: 0.15em)[.]) #{
          show link: this => text(black)[#this.body]
          link(location)[#location.page()]
        }
      ]
    }
  ]
}

#context outline(title: [= List of Links])
