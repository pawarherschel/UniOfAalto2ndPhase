#import "@preview/grape-suite:2.0.0": *
#import "util.typ": *

#show ref: it => {
  show link: this => text(black)[#this.body]

  link(it.target)[#it.element.body (#it)]
}

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

#let pre = [
  ```md
  # checklist
  - [x] "Players will optimize the fun out of the game"
    - [x] find source: https://www.youtube.com/watch?v=7L8vAGGitr8 def
  - [x] Optimism can be confused with gambling
  - [x] penalizing players feels bad, i need to encourage them and gently nudge them into having fun
    - [x] find source: https://www.youtube.com/watch?v=bsC8io4w1sY prolly
  - [x] randomness can be fun, rogue-likes are a prime example of that, however randomness takes away the player's control and makes them feel bad
    - [x] find source: https://www.youtube.com/watch?v=G9FB5R4wVno prolly
  - [x] people only remember spikes and peaks of emotions, how do i create those moments
  - [x] Give the people something other than their own skills to blame on
  - [x] double diamond process
  - [x] add a list of games which they suggested, and their interpretation
  - [x] need to make something which will being people together
    - [x] coop game
  - [x] limitations breed innovation, i need to limit the scope and focus on one core functionality/mechanic/objective
    - [x] i need to find that one specific thing to focus on
  - [x] the game should have emergent gameplay and mechanics
    - [x] things i didnt plan for but come together when the players get creative or accidents happen
      - [x] feels like its the peak of "its not a bug, its a feature"
    - [x] how do i create emergent gameplay
      - [x] Stashed Action Cards
  - [x] what i can make is also limited by how much i can put in the assignment
    - [x] optimizing the layout to minimize how much blank white space exists is another can of worms
  - [x] i have only played a limited number of board games, certainly not cooperative ones or ones which have complex mechanics (as opposed to simple mechanics which only take 1 page to write)
  - [x] i have always hidden complexity behind code, let the computer deal with complex logic and calculations, how could i make the calculations easy for board games
  - [x] if i dont feel like the game is fun then i wont be invested in improving the game, i need to be interested in the game
    - [x] i feel like optimism is the antithesis of depression, and as someone who has gone through depression i feel like i can leverage my experience and convert it into game mechanics
    - [x] to do so i would need to make the player go through a similar mind state, how do i make the player feel what depression feels like without making them actually depressed
    - [x] inspiration
      - [x] fear and hunger
      - [x] darkest dungeons
  - [ ] use these quote somewhere
    - [ ] `I believe in a universe that doesn't care, and people who do`
    - [ ] `It will get worse before it gets better`
  - [x] some potential inspirations for the game which i couldnt use
    - [x] dungeon meshi, food brings people together
      - [x] isutsumi, more cat than human, learns the warmth of human bonds
    - [x] flow movie: cute optimistic cat
  - [x] possible improvements
    - [x] maybe removing randomness and switching to "if dice roll > 50% => +1 AP" would be better
    - [x] in cards add flavor text and name, more creative cards lol
  ```
  #pagebreak(weak: true)
  ```typst
  = process
  ```
  ```md
  # checklist
  + raw word vomit
  + leave it, youll get better ideas later when you dont want to think about it
  + ask friends for inspirations and what they interpret it [^others-thought]
  + throw stuff at the wall until something squeaks
  + write down the squeaky one as checklist points
  + block out the top headings
  + fill the headings from top to bottom while checking the checklist
  + grammar and spelling fix
  + ask people for feedback
  + iterate, iterate, iterate
  + playtest and instantly write down anything even remotely interesting
  + incorporate important fixes
  + put rest as future improvement
  ```

  #context if not t.final() {
    [
      #set heading(numbering: "1.")
      #set heading(offset: 1)
      = Dummy Headings for citing cross file
      == c g i<cgi>
      == d g<dg>
      == d n g<dng>
    ]
  }
]

#show: master-layout.with(
  subtitle: [Analytical Exercise],
  exercise-prompt: exercise-prompt,
  pre: pre,
  abstract: [
    This essay examines the board game "Re:Build Nature", which was loosely made using the MDA framework with strong influence from @fpod. The aim of this essay is to reflect on the board game's results and the process of making it as a person who isn't creative. It goes through some of the problems I faced and how I overcame them. This essay focuses on three problems in @cdp, and my thought process behind the decisions made for them.
  ],
)

#explanation(detail: "and what I believe")[
  = Introduction
]

I am not a creative person. I believe that designing is a muscle that can be trained by (not blindly)copying, analyzing, and then remixing the work of others. I believe that there's always a lesson to be learnt. So, how did I design my game?
#explanation(
  detail: [heavily inspired by #[#link("https://en.wikipedia.org/wiki/Double_Diamond_(design_process_model)")[Double Diamond (design process model)]<links>]],
)[
  = Four phases of design<fpod>
]
#grid(
  columns: 2,
  column-gutter: 1em,
  row-gutter: 0.5em,
  [1. Expanding the possibilities], [-> Explore the problem space.],
  [2. Condensing the possibilities], [-> Define the core problem.],
  [3. Expanding the scope], [-> Develop the potential solutions.],
  [4. Condensing the scope], [-> Deliver the final solution.],
)

== MDA
#explanation(detail: [@gs, and @cdp])[
  === Aesthetics
]
Decide how I want the player to feel

#explanation(detail: [expansion phase of @gang])[
  === Dynamics
]
What all actions can make the player feel

#explanation(detail: [condesnation phase of @gang])[
  === Mechanics
]
What all mechanics I can implement


#explanation(detail: "Expanding the possibilities")[
  = Getting started<gs>
]

I started by checking the defination in dictionary, but found nothing. Optimism is a feeling, so I started thinking about the moments I feel optimism, and the anti-thesis of optimism, depression. I say moments because people only remember the peaks, and peaks only last a moment. Then I asked my friends about what they thought the game could have.

#explanation(detail: "Condensing the possibilities")[
  = Core Design Philosophies<cdp>
]

== "Given the opportunity, players will optimize the fun out of a game."
I need to make sure that the optimal path is the fun path. I am guilty of this as well. However, this is supposed to be a cooperative board game. What does winning mean in this context? Does it even make sense to have a win state in the game? #[#link("https://www.minecraft.net/en-us")[Minecraft]<links>] doesn't have one.

I used to play Minecraft with friends back in school. Killing the ender dragon triggers ending credits. However, to most people, that's not the point, it's more about having fun.

Playing a cooperative and creative game brings people together. Thus, I decided that the game shouldn't have an explicit win condition, and just like Minecraft, I decided that the "win condition" should be the memories.

== Giving the players more control
Nerfing people's abilities always leaves a sour taste. My goal was to ensure players felt in control of their choices and had an external factor for negative results.

Action points lets the players get to decide what to do with, while also limiting how much they can do.

Negative action cards exist as scapegoat for bad rounds.

== Gambling? Or optimism?<goo>
My friend Emý suggested a push-your-luck game, as she thought optimism is hoping for improbable outcome, however, as an ex-gatcha game player, it felt too close to gambling.

I thought about rogue-likes and rogue-lites, how do they deal with it? In #[#link("https://store.steampowered.com/app/1942280/Brotato/")[Brotato]<links>], you get higher tier items surviving more waves, you are guarenteed to get higher stats by leveling up, and it has a higher chance of giving you more weapons of same category.

So, action points scale with optimism and cat tokens exist as scalers to action cards.

#explanation(detail: "Expanding and then condensing the scope")[
  = Goals and non-goals<gang>
]

There were a lot of ideas, but what I could use were not only limited by the medium of the game, but also by the page limit for the assignment. So, I had work within those limitations. Also, a strong core is better than multiple underdeveloped ideas. It's also better to add a strong core, rather than removing and suffering backlash.

Describing your game's @cgi limit by using @dg and @dng.

#explanation(detail: "Removed while limiting scope")[
  = Scrapped ideas
]
- Trying for emergent gameplay
  - Future Work: Add action cards with synergies (similar to #[#link("https://www.enterthegungeon.com/")[Enter the Gungeon]<links>])
    - Stashed Cards can have synergies
  - Reason: overscoping + limited pages
- Creative action cards and flavor texts
  - Reason: limited area to explain
- Make the AP calculation simpler
  - Reason: worked good enough for test play
- Push-Your-Luck Mechanic
  - Reason: @goo
- Cooperative Uno-like Game
  - Reason: unsure how to adapt the game
- Optimism as a Resource
  - Reason: didn't line up with my vision

#explanation(detail: "Reference for improving the gameplay in future")[
  = Potential influences
]
- #[#link("https://en.wikipedia.org/wiki/Pandemic_(board_game)")[Pandemic (board game)]<links>]
- #[#link("https://en.wikipedia.org/wiki/Delicious_in_Dungeon")[Dungeon Meshi]<links>]
- #[#link("https://www.darkestdungeon.com/")[Darkest Dungeons]<link>]
- #[#link("https://en.wikipedia.org/wiki/Flow_(2024_film)")[Flow (2024 film)]<links>]
- #[#link("https://en.wikipedia.org/wiki/Prisoner's_dilemma")[Prisoner's dilemma]<links>]

= Final Words
I hasn't played that many board games, let alone board games with complex rulesets which require more than 10 minutes to learn. So, making a board game was an interesting challenge. Another thing is that I'm accoustomed to hiding the complex looking formulae behind code, so showing them in an easy to use manner was not that easy, especially with the limited number of pages I could use.

Also, I can only make games and programs if I'm personally interested in using them. To do that, I had imbue the game with my emotions. I wanted to make the players feel increasing amounts of hope and optimism, just as I felt. However, I didn't want them to feel the mental damage. It's not supposed to be that kind of game.

While it may seem like I've been complaining about the limitations, I know that limitations breed innovation. It made me perform quite a few hacks to fit all the content within 7 pages.

= Conclusion
Looking back I feel like the game's success was 6.5/10. It had quite a few problems, but with time, and more playtests, it can become a decent game. It was fun to play the game with my friends. The action cards are a bit boring. I feel like the (admittedly) stupid drawings would've been funny, especially the cat tokens.
