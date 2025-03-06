#import "@preview/grape-suite:2.0.0": *
#import "util.typ": *
#set text(lang: "en")

#show: exercise.project.with(
  title: "Re:Build Nature",
  type: "homework",
  abstract: [
    "Re:Build Nature" is a cooperative board game where players work together to restore a post-apocalyptic world. In this cozy and hopeful setting, players, through the power of friendship, transmute garbage into beautiful ecosystems. The game emphasizes ecosystem building and positive action, making sure optimism affects all the core gameplay mechanics. The goal is to have fun as a group and create a unique map as a reward for the players to look back upon.
  ],
  show-outline: false,
  date: datetime(year: 2025, month: 3, day: 4),
  author: "Herschel Pawar",
  header-left: block(width: 165%)[
    Link to Repository: #link("https://github.com/pawarherschel/UniOfAalto2ndPhase")[GitHub:pawarherschel/UniOfAalto2ndPhase]\
    Link to Source File: #link("https://github.com/pawarherschel/UniOfAalto2ndPhase/blob/master/HerschelPawar.typ")[GitHub:pawarherschel/UniOfAalto2ndPhase:HerschelPawar.typ]\
    Link to PDF: #link("https://github.com/pawarherschel/UniOfAalto2ndPhase/blob/master/HerschelPawar.pdf")[GitHub:pawarherschel/UniOfAalto2ndPhase:HerschelPawar.pdf]\
  ],
  page-margins: (bottom: 5em),
  footer-left: [
    Herschel Pravin Pawar\
    402, Siddhi Belleza, Sector 35D,\
    Kharghar - 410210, India
  ],
  footer-right: block(width: 100%)[
    #align(right)[
      #block[
        #align(left)[
          Phone Number: +918310783472\
          Email: pawarherschel\@gmail.com
        ]
      ]
    ]
  ],
)

/*
#exercise.task(
  title: "Creative exercise",
  [
    Creative exercise: Design a board or card game that deals with the theme “optimism”
  ],
)[
  Design and document a board game (non-digital) or a card game (non-digital) that deals with the theme “optimism” which you are free to interpret in the way you find most interesting. The target audience is adults, and if you utilize dice, avoid worn-out game mechanics such as moving around a game board according to dice throws. The game documentation should include the rules of the game, visualizations of the board, pieces, tokens, and cards. You must introduce ALL THE ELEMENTS THAT ARE NEEDED TO PLAY THE GAME. In the documentation, include a statement explaining how you used the theme “optimism”. Note that the theme should be weaved into the game design, e.g., the rule system, so that it is a central part of the game and not just a visual layer or merely an aspect of a backstory.

  In addition to the game rules and visualizations of the other elements of the game, this file should include:
  #exercise.subtask()[
    *A report of testing the game*, explanations of what you learned during the test, and how you would fix the problems observed. If it is difficult for you to organize test sessions in person with others, you can use digital tools to test your game online (e.g., Tabletop Simulator, https://tabletopia.com/), make a one-player game, or simulate a multiplayer game by yourself.
  ]
  #exercise.subtask()[
    *A description of an interesting and memorable moment* in the game. Typically, such moments involve strong emotions such as surprisal, awe, regret, or pride. Can your players experience something that they think back to and want to share and discuss with others?
  ]

  Evaluation criteria:
  1. Ability to design a game system
  2. Execution of the design
  3. Consistency of the design
  4. Ability to organize and communicate ideas clearly and concisely
]
*/

= High Concept Document
#explanation(detail: "A brief overview of the game")[
  == Key Details
]

#grid(
  columns: 2,
  gutter: 1em,
  box(width: 100%)[
    === Game Title
    Re:Build Nature
  ],
  box(width: 100%)[
    === Author
    Herschel Pawar
  ],

  box(width: 100%)[
    === Target Hardware
    Board Game (requirement)
  ],
  box(width: 100%)[
    === Genre
    Cooperative Board Game, Three Player Game
  ],
)



=== Theme
Nature restoration and optimism

#explanation(detail: "How is optimism used in the game?")[
  ==== Optimism
]
// / Optimism: "In the documentation, include a statement explaining how you used the theme “optimism”. Note that the theme should be weaved into the game design, e.g., the rule system, so that it is a central part of the game and not just a visual layer or merely an aspect of a backstory."

Optimism is an important part of the gameplay; it influences nearly every game mechanic, and it's not merely a goal the players need to complete to 100%. The decisions made in the game are reflected in the real world, as the players need to draw on the map to perform actions. This acts as physical evidence for the time they spent together, and hopefully, in dire times, they will look back at the map they created and get hope.

=== Core Gameplay Idea
Three players come together to transform the garbage-filled map into scenic beauty by physically drawing on the map. They roll to gain action points, and the amount of action points is determined by the current optimism level.

#explanation(detail: "Short statement about the game")[
  == High Concept/Synopsis
]
"Re:Build Nature" is a cozy cooperative board game set in a post-apocalyptic world. Three robots want to transmute garbage into a beautiful landscape. Specialize your robots to transmute tough garbage and end up with a beautiful map.

#explanation(detail: "\"Hooks\" for the game")[
  == Features
]
- Cooperative Gameplay: Cooperative game with 3 players
- Nature Restoration: Transmute garbage into a beautiful ecosystem
- Post-Apocalyptic Setting: Set in a world where robots have gained sentience
- Create a Map: Draw on the tiles to transmute garbage
- Cats!

#explanation(detail: "Why is the player playing the game?")[
  == Player Motivation
]

Players want to relax and play with their friends. Once the game finishes, they end up with a map as physical, everlasting proof of their gameplay.

#explanation(detail: "Who is the game aimed at?")[
  == Target Audience
]
People interested in relaxing with their friends

#explanation(detail: "Examples of similar products and comments on how it is different")[
  == Competition
]

// --- PAGE END 1/7

=== Terra Nil
#quote(
  "Terra Nil is an intricate environmental strategy game about transforming a barren wasteland into a thriving, balanced ecosystem. Bring life back to a lifeless world by purifying soil, cleaning oceans, planting trees, and reintroducing wildlife, then leave without a trace.",
  attribution: "Official Steam Page",
  block: true,
)

// #quote(
//   "Terra Nil is a game that bills itself as a reverse citybuilder and it's all about revitalising a post industrial wasteland into a thriving biosphere full of life, you start by reseeding the soil, then you cultivate some biomes, then you invite animals back to the environment before finally packing up all your stuff and leaving nature the hell alone for a change.",
//   attribution: "Adam Millard - The Architect of Games",
//   block: true,
// )

"Re:Build Nature" differentiates itself from "Terra Nil" by offering a multiplayer experience with a strong emphasis on optimism. While "Re:Build Nature" also has animals and plants, ultimately it's up to the player's imagination on how they look. Also, due to the presence of action cards and cat tokens, the players need to strategize on what to do.

#explanation(detail: "What makes the game idea unique?")[
  == Unique Selling Points
]
- Physical evidence of completed game
- Relaxing gameplay with friends

#explanation(detail: "The important design aspects of your game that we want to instill")[
  == Design Goals
]
- Create a cooperative experience with positive vibes
- Relax with friends
- Have enough variety to be replayable
- Act as a team-building exercise
- Create a tangible sense of achievement with the completed map
- Encourage homebrew and customization through a modular design

#explanation(detail: "Design aspects which we are explicitly trying to avoid")[
  == Design non-goals
]
- Mechanics which introduce competition between players
- Mentally intensive game that requires juggling resources
- Punishing gameplay
- Extremely random gameplay
- Long gameplay loops

= Gameplay Loop
== Pre-game
#design-note(comment: "Starting with a weak and generalized skill set, and then eventually specializing.")[
  Players need to distribute 3 skill points (SPs) between the following skills.

  - Water
  - Plant
  - Animal
]
*Recommendation*: The players can attach their player cards to the outside of the grid, and that would be their starting position

== Action Point Generation <RoundStart>
At the start of the round, all players roll a ten-sided dice (1D10) which generates action points (APs) according to the #link(<APCalc>)[formula below].

// --- PAGE END 2/7

#design-note(
  bottom: false,
  comment: "The gameplay accelerates towards the end as optimism is high. This feels similar to real life, where, without optimism, there's no hope, and without hope, the energy level is extremely low; thus, people are unable to perform actions and do stuff.",
)[
  // note: maybe removing randomness and switching to "if dice roll > 50% => +1 AP" would be better
  $
    "AP" &= 1 + round("Optimism Bias" * "dice roll"/10) \
    "Optimism Bias" &= cases(
    {0} &"if" & &"Optimism" < 10%,
    [0, 2] &"if" 10% &<= &"Optimism" < 20%,
    [1, 2] &"if" 20% &<= &"Optimism" < 30%,
    [1, 3] &"if" 30% &<= &"Optimism" < 40%,
    [1, 4] &"if" 40% &<= &"Optimism" < 50%,
    [2, 4] &"if" 50% &<= &"Optimism" < 75%,
    [2, 4] &"if" 75% &<= &"Optimism" < 90%,
    [3, 4] &"if" 90% &<= &"Optimism" < 95%,
    {4} &"if" 95% &<= &"Optimism",
  )
  $ <APCalc>
]

== Players' Move
#design-note(
  comment: "This gives freedom to the players. This way, if they get a negative action card and need to react to it, they are able to.",
)[
  The players strategize, if they need to move to some tile, they move towards the tile, if they need to perform actions, they spend AP to either refine resources or draw action cards. If they want to trade SP, they can spend AP to do so.

  Refer to rules #link(<SpendAP>)[here] to see what players can do with AP.
]

There is no fixed order that the players have to follow.
The players are free to spend AP in any order they want.
This phase ends once all the players have used their AP.
APs do not carry over, use it, or lose it.

== Cat Token Related Actions
#design-note(
  comment: "I love cats; they make everything better for me. That's why cat tokens are being used to amplify the positive action cards.",
)[
  The players have a chance to place a cat on the hex they're currently in. The players roll a six-sided dice, which will decide if they can place a cat. The chance is calculated with the #link(<CatCalc>)[formula below].
  Only one roll per round.
  $
    "Success?" = cases(
      &"Yes" &"if" floor("dice roll"/6 * 100) <= "Optimism",
      "otherwise" &"No",
    )
  $<CatCalc>
  Refer to the #link(<CatLUT>)[table below] for values.
  $
    #table(
    rows: 2,
    columns: {1 + 6},
    "dice roll",
    ..for i in range(1, 7) {
      ([#i],)
    },
    "minimum Optimism",
    ..for i in range(1, 7) {
      ([#{calc.floor(i/6 * 100)}],)
    }
  )
  $ <CatLUT>
]

== Round Over
Players get 1 additional skill point at the following optimism thresholds
+ 25%
+ 50%
+ 75%
+ 100%

Go to #link(<RoundStart>)[Action Point Generation]

== Game Over
The game is over when
+ The players are satisfied with the map
+ All the garbage has been refined into resources

// --- PAGE END 3/7

= Rules of the game
== Gaining Optimism
- 1% for movement
- 1% for trading
- 2% for transmute
- 3% for visiting hex with cat and placing cat


== Using AP <SpendAP>
- Draw an Action Card
- Travel to another hex
- Save the action card for later
- Transmute garbage into resources
- Trade skill points

== Positive Action Cards
The player decides when and where to use the positive action card. The action card is applied to the hex they're currently standing on.

== Negative Action Cards
#design-note(
  bottom: true,
  comment: "Rolling to avoid is being used to mimic the feeling that negative outcomes affect you less when you're hopeful and optimistic.",
)[
  The negative effects of the action card are immediately evoked on the hex the player is in.
  You can roll to avoid the negative effect. Success follows the same formula as the cat calculation #link(<CatCalc>)[here].
]

== Trading Skill Points
The players can trade skill points if and only if they're in the same hex and the skill category is same.

E.g., if `A` has ${1, 2, 2(x)}$ and `B` has ${0(y), 2, 3}$, `A` cannot give $x$ and turn it into $y$.

#table(
  rows: 2,
  columns: 3,
  stroke: 0pt,
  [*Illegal Trade*], box(width: 0.5em), [#box([`A` -> ${1,2,1(-1)}$]) and #box([`B` -> ${1(+1),2,3}$])],
  [*Legal Trade*], box(width: 0.5em), [#box([`A` -> ${1,2,1(-1)}$]) and #box([`B` -> ${1,2,4(+1)}$])],
)

== Cat Token
Cat tokens can only be placed in the current hex.

Cat tokens cannot be moved.

There is no max cat per hex; however, the maximum number of cats per board is calculated using the following formula.
$
  "Max number of cats per board" = floor("number of hexes in the map" * 1.5)
$
Common values:
#let hexes = (8, 23, 46)
$
  #table(
    rows: 3,
    columns: {1 + (6-3)},
    "Length",
    ..for i in range(3, 6) {
      if i == 3 {
        ([#i (standard)],)
      } else {
        ([#i],)
      }
    },
    "Hexes",
    ..hexes.map(x => [#x]),
    "Cats",
    ..hexes.map(x => x * 1.5).map(x => calc.floor(x)).map(x => [#x])
  )
$

// --- PAGE END 4/7

Unless otherwise stated, the cat modifiers only apply if the action card is used in a hex with a cat token. The cat modifiers are applied for each cat token in the hex.

== Corruption
#design-note(
  comment: "Corruption level exists as a skill level check; hopefully this will encourage players to specialize their AP and also increase optimism level.",
)[
  The corruption level is randomized on each tile.
  Corruption level determines the minimum skill level required to transmute the garbage. Players need to roll a six-sided dice (1D6) for the corruption level for each resource (i.e., water, plant, and animal).
  E.g., Level three corruption requires a minimum of level three skill.
  Rolling to check for corruption level does not consume AP.
  Corruption does not spread.
]

The players can only check for corruption level on the hex they're standing on.


== Garbage
There is three garbage per hex. Transmuting one garbage consumes one AP.
The resources stack multiplicatively and can spill into other tiles depending on the stacking level.

/ 1 stack: can spill into 1 other hex, decided by player
/ 2 stack: can spill into 3 hex, decided by player
/ 3 stack: can spill into all neighbors

Some resources have requirements.

- `Water`: none
- `Plant`: require `Water`
- `Animal`: require `Water` and `Plant`

= Visualizations
#design-note(comment: "These are just suggestions; use your creativity!")[
  Items required:
  + Pencils
  + Crayons
  + Erasers
  + Glue
  + Anything to enhance the tiles!
]

== Board
#design-note(comment: "Hexagons are bestagons! :3")[
  #block(
    height: 20em,
    width: 100%,
    figure(image("hex-grid.png", fit: "contain", height: 1fr), caption: "Example Hex Grid of length 3 (standard)"),
  )
]

// --- PAGE END 5/7

== Player Card
The players can draw whatever they want as their player character inside a hexagon.

#block(
  height: 9em,
  width: 100%,
  figure(
    image("bestagon.svg", height: 1fr, width: 100%, fit: "contain"),
    caption: "Outline for the hexagon where the players can create their character and write their final stats.",
  ),
)

The hexagon can then be attached to the grid so all the player cards are in the same place.

== Cat Token
#design-note(
  comment: "Small fun moments to look back at and laugh.",
  bottom: true,
)[
  Draw a cat and then cut around the cat, so there is minimal paper, and then glue it on the grid.
]

// enhancement: add flavor text and name
// enhancement: more creative cards lol
== Cards
=== Positive Action Cards
#table(
  columns: 2,
  [Effect], [Cat Modifier],
  // generic +1 to resources
  [+1 `Water` to all], [+1 `Animal`],
  [+1 `Plant` to all], [+1 `Water`],
  [+1 `Animal` to all], [+1 `Plant`],
  // generic +1 to skills
  [temporary +1 to all skills to all], [temporary +1 skill point],
  // generic +1 ap
  [+1 AP to spend in current round], [+1 AP next round],
  // generic +% optimism
  [temporary +10% optimism], [permanent +1% optimism],
  // generic avoid bad card
  [skip the next negative card], [permanent +5% optimism],
)
=== Negative Action Cards
#table(
  columns: 2,
  [Effect], [Cat Modifier],
  // generic -1 to resources
  [-1 `Water`], [adds +1 garbage],
  [-1 `Plant`], [adds +1 garbage],
  [-1 `Animal`], [adds +1 garbage],
  // generic -1 to skills
  [temporary -1 to all skills], [ignore one of the -1],
  // generic -1 ap
  [-1 AP], [+1% optimism],
  // extreme bad luck
  [cannot participate next round], [+1 AP],
  // oops?
  [lose one of your stashed card], [doubles cat token effectiveness this round],
)

// --- PAGE END 6/7

= A report of testing the game

= A description of an interesting and memorable moment

// --- PAGE END 7/7

#pagebreak(weak: true)

= Analytic exercise

