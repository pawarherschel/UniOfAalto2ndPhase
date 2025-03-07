#import "@preview/grape-suite:2.0.0": *
#import "util.typ": *
#set text(lang: "en")
#set page(numbering: "1")
#set math.equation(numbering: "~ Eq 1")
#show table: it => align(center)[#it]

#show: exercise.project.with(
  title: "Re:Build Nature",
  type: "homework",
  abstract: [
    "Re:Build Nature" is a cooperative board game where players work together to restore a post-apocalyptic world. In this cozy and hopeful setting, players, through the power of friendship, transmute garbage into beautiful ecosystems. The game emphasizes ecosystem building and positive action, making sure optimism affects all the core gameplay mechanics. The goal is to have fun as a group and create a unique map as a reward for the players to look back upon.
  ],
  show-outline: false,
  // show-outline: true,
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
- No fail state

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
  #columns(3)[
    - Water
    #colbreak()
    - Plant
    #colbreak()
    - Animal
  ]
  Optimism level starts at 0%.
]

*Recommendation*: The players can attach their player cards to the outside of the grid, and that would be their starting position.

== Action Point Generation <RoundStart>
At the start of the round, all players roll a ten-sided dice (1D10) which generates action points (APs) according @APCalc.
$
  "AP" &= 1 + floor("Bias" (#[@OptimismBias]) * "dice roll"/10)
$ <APCalc>

// --- PAGE END 2/7

#let thresholds = (
  0,
  10,
  20,
  30,
  40,
  50,
  75,
  90,
  95,
  100,
)

#design-note(
  bottom: false,
  comment: "The gameplay accelerates towards the end as optimism is high. This feels similar to real life, where, without optimism, there's no hope, and without hope, the energy level is extremely low; thus, people are unable to perform actions and do stuff.",
)[
  // note: maybe removing randomness and switching to "if dice roll > 50% => +1 AP" would be better
  $
    "Bias" &= cases(
      {0} &"if" & &"Optimism" < #thresholds.at(1)%,
      [0, 2] &"if" #thresholds.at(1)% &<= &"Optimism" < #thresholds.at(2)%,
      [1, 2] &"if" #thresholds.at(2)% &<= &"Optimism" < #thresholds.at(3)%,
      [1, 3] &"if" #thresholds.at(3)% &<= &"Optimism" < #thresholds.at(4)%,
      [1, 4] &"if" #thresholds.at(4)% &<= &"Optimism" < #thresholds.at(5)%,
      [2, 4] &"if" #thresholds.at(5)% &<= &"Optimism" < #thresholds.at(6)%,
      [3, 4] &"if" #thresholds.at(6)% &<= &"Optimism" < #thresholds.at(7)%,
      {4} &"if" #thresholds.at(7)% &<= &"Optimism" < #thresholds.at(8)%,
      {5} &"if" #thresholds.at(8)% &<= &"Optimism",
    )
  $ <OptimismBias>
]


#let op-bias(o: int, dice: int) = {
  let possible = if o < thresholds.at(1) {
    (0,)
  } else if o < thresholds.at(2) {
    (0, 1, 2)
  } else if o < thresholds.at(3) {
    (1, 2)
  } else if o < thresholds.at(4) {
    (1, 2, 3)
  } else if o < thresholds.at(5) {
    (1, 2, 3, 4)
  } else if o < thresholds.at(6) {
    (2, 3, 4)
  } else if o < thresholds.at(7) {
    (3, 4)
  } else if o < thresholds.at(8) {
    (4,)
  } else { (5,) }

  let (ret, idx, len) = if possible.len() == 1 {
    (possible.at(0), 0, 1)
  } else {
    let perc = dice / 6.0

    let idx = int(calc.floor(perc * possible.len()))

    (possible.at(idx, default: possible.last()), idx, possible.len())
  }

  return (o: o, dice: dice, bias: ret)
}

#let vals = (
  // range(0, 101)
  thresholds
    .map(o => {
      range(1, 7).map(dice => op-bias(o: o, dice: dice))
    })
    .flatten()
    .chunks(6)
    .map(c => c.rev())
    .map(c => c.dedup(key: c => c.bias))
    .map(c => c.rev())
    .flatten()
)

#let soa-vals = vals.fold(
  (o: (), dice: (), bias: ()),
  (acc, it) => {
    let (o, dice, bias) = it
    acc.o.push(o)
    acc.dice.push(dice)
    acc.bias.push(bias)

    acc
  },
)
#let OptimismTable = {
  let style-a(val: int) = {
    let color = oklch(100%, 50%, (val / 7 * 360deg))
    table.cell(fill: color)[
      #val
    ]
  }

  let style-b(val: int, s: str) = {
    let color = oklch(100%, 90%, (val / 101 * 360deg))
    let c = rotate(-90deg, reflow: true)[#val#s]
    let c = table.cell(fill: color)[#c]
    c
  }

  let style-c(val: str) = {
    let c = val.split(" ").join("\n")
    c
  }


  table(
    columns: (1 + soa-vals.o.len()),
    rows: 3,
    align: center + horizon,
    style-c(val: "Minimum Optimism Level"),
    ..soa-vals.o.map(it => style-b(val: it, s: "%")),

    style-c(val: "Max Dice Value"),
    ..soa-vals.dice.map(it => (style-a(val: it))),

    style-c(val: "Action Points"),
    ..soa-vals.bias.map(it => style-a(val: it + 1))
  )
}

#figure(OptimismTable, caption: "Look Up Table for AP calculation")

== Players' Move
#design-note(
  comment: "This gives freedom to the players. This way, if they get a negative action card and need to react to it, they are able to.",
)[
  The players strategize, if they need to move to some tile, they move towards the tile, if they need to perform actions, they spend AP to either refine resources or draw action cards. If they want to trade SP, they can spend AP to do so.

  Refer to the rules (#link(<SpendAP>)[@SpendAP]) to see what players can do with AP.
]

There is no fixed order that the players have to follow.
The players are free to spend AP in any order they want.
This phase ends once all the players have used their AP.
APs do not carry over, use it, or lose it.

== Cat Token Related Actions
#design-note(
  comment: "I love cats; they make everything better for me. That's why cat tokens are being used to amplify the positive action cards.",
)[
  The players have a chance to place a cat on the hex they're currently in. The players roll a six-sided dice, which will decide if they can place a cat. The chance is calculated using @CatCalc.
  Only one roll per round.
  $
    "Success?" = cases(
      "Yes" &"if" floor("dice roll"/6 * 100) <= "Optimism",
      "No" &"otherwise",
    )
  $<CatCalc>
]
#figure(
  table(
    rows: 2,
    columns: { 1 + 6 },
    "dice roll",
    ..for i in range(1, 7) {
      ([#i],)
    },
    "minimum Optimism",
    ..for i in range(1, 7) {
      ([#{ calc.floor(i / 6 * 100) }],)
    }
  ),
  caption: "Look Up Table for success calculation",
)


// --- PAGE END 3/7

== Round Over
#design-note(comment: "Trying to mimic the process of specialization in real life")[
  Players get 1 additional skill point at the following optimism thresholds
  #columns(4)[
    + 25%
    #colbreak()
    + 50%
    #colbreak()
    + 75%
    #colbreak()
    + 100%
  ]
  Go to #link(<RoundStart>)[Action Point Generation]
]
== Game Over
#design-note(comment: "The goal is to have fun")[
  The game is over either when
  the players are satisfied with the map
  or all the garbage has been refined into resources
]

= Rules of the game
== Gaining Optimism
#columns[
  - 3% for visiting hex with cat
  - 3% for placing cat
  - 2% for transmuting all the garbage in an hex
  - 1% for trading
  #colbreak()
  - Drawing action cards
    - Positive action cards give +3%
    - Negative action cards give -2%
    - Avoiding negative action cards give +1%
]

== Using AP <SpendAP>
#columns()[
  - Draw an Action Card
  - Travel to another hex
  - Transmute garbage into resources
  #colbreak()
  - Save the action card for later
  - Trade skill points
]

== Positive Action Cards
The player decides when and where to use the positive action card. The action card is applied to the hex they're currently standing on.

== Negative Action Cards
#design-note(
  bottom: true,
  comment: "Rolling to avoid is being used to mimic the feeling that negative outcomes affect you less when you're hopeful and optimistic.",
)[
  The negative effects of the action card are immediately evoked on the hex the player is in.
  You can roll to avoid the negative effect. Success follows @CatCalc.
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
Cat tokens can only be placed in the current hex and they cannot be moved.
There is no max cat per hex; however, the maximum number of cats per board is calculated using @MaxCat.
$
  "Max number of cats per board" = floor("number of hexes in the map" * 1.5)
$ <MaxCat>

// --- PAGE END 4/7

#let hexes = (8, 23, 46)
#figure(
  table(
    rows: 3,
    columns: { 1 + (6 - 3) },
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
  ),
  caption: "Look Up Table for calculating max number of cats",
)
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
  #columns()[
    - Pencils
    - Crayons
    #colbreak()
    - Erasers
    - Glue
  ]
  Anything to enhance the tiles!
]

== Player Card
The players can draw whatever they want as their player character inside a hexagon.

#block(
  height: 8em,
  width: 100%,
  figure(
    image("bestagon.svg", height: 1fr, width: 100%, fit: "contain"),
    caption: "Outline for the hexagon where the players can create their character and write their final stats.",
  ),
)

// --- PAGE END 5/7

== Board
#design-note(comment: "Hexagons are bestagons! :3")[
  #block(
    height: 20em,
    width: 100%,
    figure(image("hex-grid.png", fit: "contain", height: 1fr), caption: "Example Hex Grid of length 3 (standard)"),
  )
]

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
  table.header(
    [Effect],
    [Cat Modifier],
  ),
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
  table.header(
    [Effect],
    [Cat Modifier],
  ),
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

= Conclusion? // TODO?

= Glossary

#columns(2)[
  #list(
    indent: -0.25em,
    [/ Action Points (AP): Energy system for the game. <AP>],
    [
      / Skill Points (SP): Points allocated to skills that determine if the player can transmute garbage or not. <SP>
    ],
    [
      / Optimism: A percentage based value that influences various game mechanics (not too dissimilar to luck.). <Optimism>
    ],
    [
      / Garbage: Raw materials which can be #link(<Transmute>)[transmuted] into #link(<Resources>)[resources]. <Garbage>
    ],
    [/ Raw resources: See: #link(<Garbage>)[Garbage] <RawResources>],
    [
      / Resources: The refined materials created from garbage. Limited to `Water`, `Plant`, and `Animal` in the base game. <Resources>
    ],
  )
  #colbreak()
  #list(
    indent: -0.25em,
    [/ Corruption: The measurement of difficulty required to transmute garbage into a resource. <Corruption>],
    [
      / Corruption Level: The minimum skill level required to transmute garbage into a particular resource. <CorruptionLevel>
    ],
    [/ Hex: A single tile on the board. <Hex>],
    [
      / Cat Token: A token that provides bonuses when #link(<ActionCard>)[action cards] are used on a #link(<Hex>)[hex]. <CatToken>
    ],
    [/ Action Card: Cards that provide special actions or effects, both positive, and negative. <ActionCard>],
    [/ Transmute: The process of converting garbage into resources. <Transmute>],
  )
]
// --- PAGE END 7/7

#pagebreak(weak: true)

/*
#exercise.task(
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

  WRITING INSTRUCTIONS, FORMAT AND DELIVERY

  The tasks should not be longer than stated in the instructions. You must use English in your tasks.

  Save your tasks into one PDF file. Name the file with your own name, for instance, ForenameSurname.pdf.

  Return all materials in PDF format.

  The total size of your file may not exceed 20MB.

  Add your full name and contact information (real life address, permanent email address) to ALL files that you send us. This makes sure that your answers will be treated as your answers. Make sure that the email address you state that will be valid for contacting you even a couple of months after the selection process. Please avoid using temporary email addresses, such as the email of the school you are leaving.
]
*/

= Analytic exercise

// --- Preliminary Assignments END

#pagebreak(weak: true)

= Acknowledgement
in no particular order
- Addy (DOS)
- Ashutosh
- Divyesh
- Emý
- Lucrious
- nottoph

= Major Inspirations
- Terra Nil
- Wall-E
- #youtube-link(
    creator: "Adam Millard - The Architect of Games",
    title: "Terra Nil Claims It's A Reverse Citybuilder. It Isn't.",
    video-link: "https://www.youtube.com/watch?v=WKTvUrbMlrA",
  )
- #youtube-link(
    creator: "Game Maker's Toolkit",
    title: "This Psychological Trick Makes Rewards Backfire",
    video-link: "https://www.youtube.com/watch?v=1ypOUn6rThM",
  )
