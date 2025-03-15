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
  abstract: [
    This essay examines the board game "Re:Build Nature" and is roughly based on the MDA framework. The aim of this essay is to reflect back on the board game's results and the process of making it as a person who isn't creative. It goes though some of the problems I faced and how I overcame them.
  ],
)

```md
# checklist
- [ ] "Players will optimize the fun out of the game"
  - [x] find source: https://www.youtube.com/watch?v=7L8vAGGitr8 def
- [ ] Optimism can be confused with gambling
- [ ] penalizing players feels bad, i need to encourage them and gently nudge them into having fun
  - [x] find source: https://www.youtube.com/watch?v=bsC8io4w1sY prolly
- [ ] randomness can be fun, rogue-likes are a prime example of that, however randomness takes away the player's control and makes them feel bad
  - [x] find source: https://www.youtube.com/watch?v=bsC8io4w1sY prolly
- [ ] people only remember spikes and peaks of emotions, how do i create those moments
- [ ] the game should have emergent gameplay and mechanics
  - [x] things i didnt plan for but come together when the players get creative or accidents happen
    - [x] feels like its the peak of "its not a bug, its a feature"
  - [ ] how do i create emergent gameplay
- [ ] i have only played a limited number of board games, certainly not cooperative ones or ones which have complex mechanics (as opposed to simple mechanics which only take 1 page to write)
- [ ] i have always hidden complexity behind code, let the computer deal with complex logic and calculations, how could i make the calculations easy for board games
- [ ] if i dont feel like the game is fun then i wont be invested in improving the game, i need to be interested in the game
  - [ ] i feel like optimism is the antithesis of depression, and as someone who has gone through depression i feel like i can leverage my experience and convert it into game mechanics
  - [ ] to do so i would need to make the player go through a similar mind state, how do i make the player feel what depression feels like without making them actually depressed
  - [ ] inspiration
    - [ ] fear and hunger
    - [ ] darkest dungeons
- [ ] limitations breed innovation, i need to limit the scope and focus on one core functionality/mechanic/objective
  - [ ] i need to find that one specific thing to focus on
- [ ] what i can make is also limited by how much i can put in the assignment
  - [ ] optimizing the layout to minimize how much blank white space exists is another can of worms
- [ ] need to make something which will being people together
  - [ ] coop game
- [ ] use these quote somewhere
  - [ ] `I believe in a universe that doesn't care, and people who do`
  - [ ] `It will get worse before it gets better`
- [ ] some potential inspirations for the game which i couldnt use
  - [ ] dungeon meshi, food brings people together
    - [ ] isutsumi, more cat than human, learns the warmth of human bonds
  - [ ] flow movie: cute optimistic cat
```
