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
