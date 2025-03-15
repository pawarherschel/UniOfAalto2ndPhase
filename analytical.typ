#import "@preview/grape-suite:2.0.0": *
#import "util.typ": *

#let exercise-prompt = {
  exercise.task(
    title: "Analytic exercise",
    [Analytic exercise],
  )[
    Write a brief essay (approximately 1000 words) reflecting on your Exercise 1 results and process, based on one or more of the following sources:

    - #block[
        Designing Journey -- a GDC talk by Jenova Chen\
        https://www.youtube.com/watch?v=UGCkVHSvjzM
      ]

    - #block[
        MDA: A Formal Approach to Game Design and Game Research -- a research paper by Robin Hunicke, Marc LeBlanc, and Robert Zubek\
        https://users.cs.northwestern.edu/~hunicke/MDA.pdf
      ]

    - #block[
        What Makes an Indie Hit?: How to Choose the Right Design -- a Game Developer Magazine article by Ryan Clark\
        https://www.gamedeveloper.com/business/what-makes-an-indie-hit-how-to-choose-the-right-design
      ]


    Evaluation criteria:
    1. Ability to handle complex issues and conceptual information
    2. Ability to organize and communicate ideas clearly and concisely
    3. Ability to reflect on your own work
    4. Ability to analyze, criticize and invent
    5. Quality of written communication
  ]
}

#show: master-layout.with(
  subtitle: [Analytical Exercise],
  exercise-prompt: exercise-prompt,
)
