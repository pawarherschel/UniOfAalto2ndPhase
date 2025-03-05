#import "@preview/grape-suite:2.0.0": *
#import "util.typ": *
#set text(lang: "en")

#show: exercise.project.with(
  title: "Re:Build Nature",
  type: "homework",
  abstract: [
    "Re:Build Nature" is a cooperative board game where players work together to restore a post-apocalyptic world. In this cozy and hopeful setting, players, through the power of friendship, transmute garbage into beautiful ecosystems. The game emphasizes ecosystem building and positive action, making sure optimism affects all the core gameplay mechanics. The goal is to have fun as a group and create a unique map as the reward for the players to look back upon.
  ],
  show-outline: false,
  date: datetime(year: 2025, month: 3, day: 4),
  author: "Herschel Pawar",
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

#explaination(detail: "A brief overview of the game")[
  == At a Glance
]

=== Game Title
Re:Build Nature

=== Author
Herschel Pawar

=== Genre
Cooperative Board Game, Three Player Game

=== Theme
Nature restoration and optimism

==== Optimism
// / Optimism: "In the documentation, include a statement explaining how you used the theme “optimism”. Note that the theme should be weaved into the game design, e.g., the rule system, so that it is a central part of the game and not just a visual layer or merely an aspect of a backstory."

Optimism is an important part of the gameplay, it affects nearly every game mechanic and it's not merely a goal the players need to complete to 100%. The decisions made in the game are reflected in the real world as the players need to draw on the map to perform actions. This acts as a physical evidence for the time they spent together and hopefully, in dire times, they will look back at the map they created and get hope.

=== Target Hardware
Board Game (requirement)

=== Core Gameplay Loop
Three players come together to transform the garbage filled map into a scenic beauty by physically drawing on the map.

#explaination(detail: "Short statement about the game")[
  == High Concept/Synopsis
]
"Re:Build Nature" is a cozy cooperative board game, set in a Post-apocalyptic world, three robots want to transmute garbage into a beautiful landscape. Specialize your robots to transmute toughed garbage and end up with a beautiful map.

#explaination(detail: "\"Hooks\" for the game")[
  == Features
]
- Cooperative Gameplay: Cooperative game with 3 players
- Nature Restoration: Transmute garbage into a beautiful ecosystem
- Post-Apocalyptic Setting: Set in a world where robots have gained sentience
- Create a Map: Draw on the tiles to transmute garbage
- Cats!

#explaination(detail: "Why is the player playing the game?")[
  == Player Motivation
]

Players want to relax and play with their friends. Once the game finishes, they end up with a map as physical everlasting proof of their gameplay.

#explaination(detail: "Who is the game aimed at?")[
  == Target Audience
]
People interested in relaxing with their friends

#explaination(detail: "Examples of similar products and comments on how it is different")[
  == Competition
]
=== Terra Nil

#quote(
  "Terra Nil is an intricate environmental strategy game about transforming a barren wasteland into a thriving, balanced ecosystem. Bring life back to a lifeless world by purifying soil, cleaning oceans, planting trees, and reintroducing wildlife, then leave without a trace.",
  attribution: "Steam Page",
  block: true,
)

#quote(
  "Terra Nil is a game that bills itself as a reverse citybuilder and it's all about revitalising a post industrial wasteland into a thriving biosphere full of life, you start by reseeding the soil, then you cultivate some biomes, then you invite animals back to the environment before finally packing up all your stuff and leaving nature the hell alone for a change.",
  attribution: "Adam Millard - The Architect of Games",
  block: true,
)

"Re:Build Nature" differentiates itself from "Terra Nil" by offering a multiplayer experience with a strong emphasis on optimism. While "Re:Build Nature" also has animals, and plants, ultimately it's upto the player's imagination on how they look. Also, due to presence of action cards and cat tokens, the players need to strategize on what to do.

#explaination(detail: "What makes the game idea unique?")[
  == Unique Selling Points
]
- Physical evidence of completed game
- Relaxing gameplay with friends
- Ability to homebrew

#explaination(detail: "The important design aspects of your game that you want to instil")[
  == Design Goals
]
- Create a cooperative experience with positive vibes
- Relax with friends
- Have enough variety to be replayable
- Act as a team-building exercise
- Create a tangible sense of achievement with the completed map
- Encourage homebrew and customization through a modular design

#explaination(detail: "Design aspects which we are explicitly trying to avoid")[
  == Design Non-goals
]
- Mechanics which introduce competition between players
- Mentally intensive game which requires juggling resources
- Punishing gameplay
- Extremely random gameplay
- Long gameplay loops

= Gameplay Loop

== Pre-game
#design-note(comment: "Starting with a weak and generalized skillset, and then eventually specializing.")[
  Players need to distribute 3 skill points (SPs) between the following skills.

  - Water
  - Plant
  - Animal

  Recommendation: The players can attach their player cards to the outside of the grid, and that would be their starting position
]

== Action Point Generation <RoundStart>
#design-note(
  comment: "The gameplay accelerates towards the end as optimism is high. This feels similar to real life where, without optimism, theres no hope, and without hope, the energy level is extremely low, thus, people are unable to do perform actions and do stuff.",
)[
  At the start of the round, all players roll a ten-sided dice (1D10) which generates action points (APs) according to the #link(<APCalc>)[formula below].
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
  comment: "This give freedom to the players. This way, if they get a negative action card and need to react to it, they are able to.",
)[
  The players strategize, if they need to move to some tile, they move towards the tile, if they need to perform actions, they spend AP to either refine resources or draw action cards. If they want to trade SP, they can spend AP to do so.

  Refer to rules #link(<SpendAP>)[here] to see what players can do with AP.

  #highlight("There is no fixed order that the players have to follow").
  The players are free to spend AP in any order they want.
  This phase ends once all the players have used their AP.
]


== Cat Token Related Actions

#design-note(
  comment: "I love cats, they make everything better for me. Thats why cat tokens are being used to amplify the positive action cards.",
)[
  The players have a chance to place a cat on the hex theyre currently in. The players roll a six-sided dice which will decide if they can place a cat. The chance is calculated with the #link(<CatCalc>)[formula below].
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

= Rules of the game

== Gaining Optimism

1% for movement\
1% for trading\
2% for transmute\
3% for visiting hex with cat and placing cat\


== Using AP <SpendAP>
- Draw an Action Card
- Travel to another hex
- Save the action card for later
- Transmute garbage into resources
- Trade skill points

== Positive Action Cards
The player decides when and where to use the positive action card. The action card is applied on the hex they're current standing on.

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

E.g. if `A` has ${1, 2, 2(x)}$ and `B` has ${0(y), 2, 3}$, `A` cannot give $x$ and turn it into $y$.

/ Illegal Trade: #box([`A` -> ${1,2,1(-1)}$]) and #box([`B` -> ${1(+1),2,3}$])
/ Legal Trade: #box([`A` -> ${1,2,1(-1)}$]) and #box([`B` -> ${1,2,4(+1)}$])

== Cat Token

Cat tokens can only be placed in the current hex.

Cat tokens #highlight[CANNOT] be moved.

There is no max cat per hex, however the maximum number of cats per board is calculated using the following formula.
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
      ([#i],)
    },
    "Hexes",
    ..hexes.map(x => [#x]),
    "Cats",
    ..hexes.map(x => x * 1.5).map(x => calc.floor(x)).map(x => [#x])
  )
$

== Corruption

#design-note(
  comment: "corruption level exists as a skill level check, hopefully this will encourage players to specialize their AP and also increase Optimism level",
)[
  The corruption level is randomized on each tile.
  Corruption level determines the minimum skill level required to transmute the garbage. Players need to roll a six-sided dice (1D6) for the corruption level for each resource (i.e. water, plant, and animal).

  Rolling to check for corruption level #highlight[does NOT] consume AP. The players can only check for corruption level on the hex they're standing on.

  Corruption #highlight[does NOT] spread.
]

== Garbage

There is three garbage per hex. Transmuting one garbage consumes one AP.

The resources stack multiplicatively and can spill into other tiles depending on the stacking level.

/ 1 stack: spill into 1 other hex decided by player
/ 2 stack: spill into 3 hex decided by player
/ 3 stack: spill into all neighbors

Some resources have requirements.

- `Water`: none
- `Plant`: require `Water`
- `Animal`: require `Water` and `Plant`

= Visualizations

Items required:
+ Pencils
+ Crayons
+ Erasers
+ Glue
+ Anything to enhance the tiles!

== Board
#design-note(comment: "Hexagons are bestagons! :3")[
  #block(
    height: 36em,
    width: 100%,
    figure(image("hex-grid.png", fit: "contain", height: 1fr), caption: "Example Hex Grid"),
  )
]

== Player Card
#design-note(comment: "Complete creative freedom")[
  The players can draw whatever they want as their player character inside a hexagon.

  #figure(
    image("bestagon.svg"),
    caption: "outline for the hexagon where the players can create their character and write their final stats",
  )

  The hexagon can then be attached to the grid so all the player cards are in the same place.
]

== Cat Token
#design-note(comment: "Small fun moments to look back at and laugh")[
  Draw a cat smaller than a hexagon and then cut around the cat so there is minimal paper, and then glue it on the grid.
]

== Cards

= A report of testing the game
= A description of an interesting and memorable moment
