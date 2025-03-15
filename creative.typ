#import "util.typ": *

#let exercise-prompt = {
  exercise.task(
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
}

#show: master-layout.with(
  subtitle: "Creative Exercise",
  exercise-prompt: exercise-prompt,
  abstract: [
    "Re:Build Nature" is a cooperative board game where players work together to restore a post-apocalyptic world. In this cozy and hopeful setting, players, through the power of friendship, transmute garbage into beautiful ecosystems. The game emphasizes ecosystem building and positive action, making sure optimism affects all the core gameplay mechanics. The goal is to have fun as a group and create a unique map as a reward for the players to look back upon.
  ],
)
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

#explanation(detail: "How's optimism used in the game?")[
  ==== Optimism
]
// / Optimism: "In the documentation, include a statement explaining how you used the theme “optimism”. Note that the theme should be weaved into the game design, e.g., the rule system, so that it is a central part of the game and not just a visual layer or merely an aspect of a backstory."

Optimism is an important part of the gameplay; it influences nearly every game mechanic, and it's not merely a goal the players need to complete to 100%. The decisions made in the game are reflected in the real world, as the players need to draw on the map to perform actions. This acts as physical evidence for the time they spent together, and hopefully, in dire times, they will look back at the map they created and get hope.

=== Core Gameplay Idea
Three players come together to transform the garbage-filled map into scenic beauty by physically drawing on the map. They roll to gain action points, and the number of action points is determined by the current optimism level.

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
People interested in relaxing with their friends.

#explanation(detail: "Examples of similar products and comments on how it's different")[
  == Competition
]

// -- PAGE END 1/7

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

"Re:Build Nature" differentiates itself from "Terra Nil" by offering a multiplayer experience with a strong emphasis on optimism. While "Re:Build Nature" also has animals and plants, it's up to the player's imagination on how they look. Also, due to the presence of action cards and cat tokens, the players need to strategize on what to do.

#explanation(detail: "What makes the game idea unique?")[
  == Unique Selling Points
]
#columns(2)[
  - Physical evidence of completed game.
  #colbreak()
  - Relaxing gameplay with friends.
]
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

#explanation(detail: "Design aspects that we're explicitly trying to avoid")[
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
At the start of the round, all players roll a ten-sided dice (1D6) which generates action points (APs) according @APCalc.
$
  "AP" &= 1 + floor("Bias" (#[@OptimismBias]) * "dice roll"/6)
$ <APCalc>

// -- PAGE END 2/7

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
  } else if o < thresholds.at(9) {
    (5,)
  } else { (6,) }

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

// #(
//   thresholds
//     .map(o => {
//       range(1, 7).map(dice => op-bias(o: o, dice: dice))
//     })
//     .flatten()
//     .chunks(6)
// )

#let vals = (
  thresholds
    .map(o => {
      range(1, 7).map(dice => op-bias(o: o, dice: dice))
    })
    .flatten()
    .chunks(6)
    .map(it => {
      let biases = it.map(d => d.bias).dedup()
      let biases = biases.map(bias => (bias: bias, values: it.filter(b => b.bias == bias)))

      let b2 = biases.map(it => {
        let (bias, values) = it

        let o = values.first().o
        let min = values.first().dice
        let max = values.last().dice

        (o: o, bias: bias, min: min, max: max)
      })

      b2
    })
    .flatten()
)

#let soa-vals = vals.fold(
  (o: (), min: (), bias: (), max: ()),
  (acc, it) => {
    let (o, bias, min, max) = it
    acc.o.push(o)
    acc.min.push(min)
    acc.max.push(max)
    acc.bias.push(bias)

    acc
  },
)
#let OptimismTable = {
  let style-a(max: int, min: -1) = {
    // if type(min) != type(-1) {
    //   panic("MEOW??????")
    // }

    let color = oklch(100%, 50%, (max / 7 * 360deg))
    table.cell(fill: color)[
      #if min != -1 and min != max {
        rotate(-90deg, reflow: true)[
          #if min == 1 and max == 6 { [always] } else {
            range(min, max + 1).map(it => str(it)).join(", ")
          }
        ]
      } else {
        [#max]
      }
    ]
  }

  let style-b(val: int, s: str) = {
    let color = oklch(100%, 90%, (val / 125 * 360deg))
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

    style-c(val: "Dice Values"),
    ..soa-vals.max.zip(soa-vals.min).map(it => (style-a(max: it.at(0), min: it.at(1)))),

    style-c(val: "Action Points"),
    ..soa-vals.bias.map(it => style-a(max: it + 1))
  )
}

#figure(OptimismTable, caption: "Look Up Table for AP calculation")

== Players' Move
#design-note(
  comment: "This gives freedom to the players. This way, if they get a negative action card and need to react to it, they're able to.",
)[
  The players strategize, if they need to move to some tile, they move towards the tile, if they need to perform actions, they can spend AP to either refine resources or draw action cards. If they want to trade SP, they can spend AP to do so.
  Refer to the rules (#link(<SpendAP>)[@SpendAP]) to see what players can do with AP.
  There is no fixed order that the players have to follow.
]
The players are free to spend AP in any order they want.
This phase ends once all the players have used their AP.
APs don't carry over, use it, or lose it.
== Cat Token Related Actions
#design-note(
  comment: "I love cats; they make everything better for me. That's why cat tokens are being used to amplify the positive action cards.",
)[
  The players have a chance to place a cat on the hex they're currently in. The players roll a six-sided dice, which decides if they can place a cat. The chance is calculated using @CatCalc.
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
    "minimum optimism",
    ..for i in range(1, 7) {
      ([#{ calc.floor(i / 6 * 100) }],)
    }
  ),
  caption: "Look Up Table for success calculation",
)


#block[== Round Over]
#design-note(
  comment: "Trying to mimic the process of specialization in real life",
  bottom: true,
)[
  Players get 1 more SP at the following optimism thresholds
  #columns(4)[
    + 25%
    #colbreak()
    + 50%
    #colbreak()
    + 75%
    #colbreak()
    + 100%
  ]

  // -- PAGE END 3/7

]
Go to #link(<RoundStart>)[Action Point Generation]

== Game Over
The game is over when
the players are happy with the map
or all the garbage has been refined.

= Rules of the game
== Gaining Optimism
#columns[
  - 3% for visiting hex with cat
  - 3% for placing cat
  - 2% for transmuting all the garbage in a hex
  - 1% for trading
  #colbreak()
  - Drawing action cards
    - Positive action cards give +3%
    - Negative action cards give --2%
    - Avoiding negative action cards give +1%
]

== Using AP <SpendAP>
#columns(2)[
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
There are four requirements to trade skill points.
#columns(2)[
  1. The player giving skill has enough AP
  2. Negative skill points don't aren't valid
  #colbreak()
  3. They're both in the same hex
  4. The skill category is the same
]

== Cat Token
Cat tokens can only be placed in the current hex, and they can't be moved.
There is no max cat per hex; however, the maximum number of cats per board is calculated using @MaxCat.

Unless otherwise stated, the cat modifiers only apply if the action card is used in a hex with a cat token. The cat modifiers are applied for each cat token in the hex.

$
  "Max number of cats per board" = floor("number of hexes in the map" * 1.5)
$ <MaxCat>

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

#block[== Corruption]

// -- PAGE END 4/7

#design-note(
  comment: "Corruption level exists as a skill level check; hopefully this will encourage players to specialize their AP and also increase optimism level.",
)[
  The corruption level is randomized on each tile.
  Corruption level determines the minimum skill level required to transmute the garbage. Players need to roll a six-sided dice (1D6) for the corruption level for each resource (that is, water, plant, and animal).
  For example, Level three corruption requires a minimum of level three skill.
  Rolling to check for corruption level doesn't consume AP.
  Corruption doesn't spread.
  The corruption levels are calculated once a player enters the hex.
]

== Garbage
There are three garbage per hex. Transmuting one garbage consumes one AP.
The resources stack multiplicatively and can spill into other tiles depending on the stacking level.
Here, spilling means that the hex being spilled into gets a +1 bonus for the resource and you need to indicate which hex is being spilled into by drawing.

#columns(3)[
  / 1 stack: can't spill
  #colbreak()
  / 2 stack: upto 3 hexes
  #colbreak()
  / 3 stack: upto 6 hexes
]
Some resources have requirements.

#box()[- `Water`: none]
#h(1fr)
#box()[- `Plant`: require `Water`]
#h(1fr)
#box()[- `Animal`: require `Water` and `Plant`]

= Visualizations
#design-note(comment: "These are just suggestions; use your creativity!")[
  Items required:
  #columns(4)[
    - Pencils
    #colbreak()
    - Crayons
    #colbreak()
    - Erasers
    #colbreak()
    - Glue
  ]
  Anything to enhance the tiles!
]

== Board

The players need to have two boards. One serves as the "data layer", used to track how many resources are present, the corruption levels and how many raw resources are remaining. The other one is used for drawing the map.

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

// #design-note(comment: "Hexagons are bestagons! :3")[]
#{
  let thingy-height = 19em

  grid(
    columns: 2,
    column-gutter: 1em,
    rows: 1,
    row-gutter: 2em,
    box(
      width: 100%,
      block(
        height: thingy-height,
        width: 100%,
        figure(
          image(
            "hex-grid.png",
            fit: "contain",
            height: 1fr,
          ),
          caption: "Example Hex Grid of length 3 (standard)",
        ),
      ),
    ),
    [
      #block(width: 19em, height: thingy-height)[
        #align(right)[
          #rect(width: 13em, fill: luma(240))[
            *Design Note:* Hexagons are bestagons! :3
          ]
        ]

        #{
          show figure: it => {
            let body = it.body
            let cap = it.caption
            let supp = it.supplement
            let num = it.numbering

            set text(hyphenate: false)
            set par(justify: false)

            grid(
              columns: 2,
              body, align(left + horizon, cap),
            )
          }

          block(height: 1fr)[
            #figure(
              image(
                "grid-cell.inkscape.svg",
                width: 100%,
                height: 1fr,
                fit: "contain",
              ),
              caption: "Layout for a single \"data layer\" hex",
            )
          ]
          block(height: 1fr)[
            #figure(
              image(
                "grid-cell-example.inkscape.svg",
                width: 100%,
                height: 1fr,
                fit: "contain",
              ),
              caption: "Example of a hex",
            )
          ]
        }
      ]
    ],
  )
}
== Player Card
The players can draw whatever they want as their player character inside a hexagon.

== Cat Token
#design-note(
  comment: "Small fun moments to look back at and laugh.",
  bottom: true,
)[
  Draw a cat and then cut around the cat, so there is minimal paper, and then glue it on the grid.

  // -- PAGE END 5/7

]

// enhancement: add flavor text and name
// enhancement: more creative cards lol

== Cards
#grid(
  columns: 2,
  column-gutter: 1em,
  align: center + horizon,
  [
    === Positive Action Cards
    #table(
      columns: 2,
      table.header(
        [Effect],
        [Cat Modifier],
      ),
      // generic +1 to resources
      [+1 `Water` Skill], [+1 `Animal`],
      [+1 `Plant` Skill], [+1 `Water`],
      [+1 `Animal` Skill], [+1 `Plant`],
      // generic +1 to skills
      [+3 skill points], [+1 skill point to all],
      // generic +1 ap
      [+1 AP], [+1 AP to all],
      // generic +% optimism
      [temporary +10% optimism], [permanent +1% optimism],
      // generic avoid bad card
      [skip the next negative card], [permanent +5% optimism],
    )
  ],
  [
    === Negative Action Cards
    #table(
      columns: 2,
      table.header(
        [Effect],
        [Cat Modifier],
      ),
      // generic -1 to resources
      [--1 `Water` Skill], [adds +1 garbage],
      [--1 `Plant` Skill], [adds +1 garbage],
      [--1 `Animal` Skill], [adds +1 garbage],
      // generic -1 to skills
      [--1 to all skill levels], [gain +4 skill levels],
      // generic -1 ap
      [--1 AP], [+1% optimism],
      // extreme bad luck
      [can't participate next round], [+1 AP],
      // oops?
      [lose one of your stashed card], [skip next negative card],
    )
  ],
)

= A report of testing the game

The testing was done by meeting in real life and hosting a game.
Two of my friends (Ashutosh, and Divyesh) joined me to play the game (see: @all-of-us-photo).
A two hour session was held.
The drawing part was done on pc, using the digital painting app #link("https://krita.org/en/")[Krita] and a pentablet (#link("https://www.xp-pen.com/product/deco-fun-xs-s-l.html")[XP-Pen Deco Fun L]).
The data layer was done on a paper (see: @final-hex-grid-photo).
We used out keychains as player tokens to track position (see: @A-token-photo, @D-token-photo, and @H-token-photo).

These were the major problems we encountered and what I did to remedy them.

#columns(2, gutter: -0.5em)[
  - +1 `Water` felt weird resource
    - Rework it to give +1 skill instead
  - The AP generation rules were confusing
    - Made the lookup table easier to refer
  - Rules were unclear and ambiguous
    - Tried my best to clarify them
  #colbreak()
  - Very few avenues to increase optimism
    - Did nothing, working as intended
  - Checking for corruption was after the turn felt like cheating
    - Made it so the corruption is automatically rolled everytime someone enters a new hex
]

= A description of an interesting and memorable moment

- I got a negative card in the first round and made the optimism level negative, my friends playfully teased me the whole game.
- We were very excited to reach 10% optimism as we won't be limited to one AP.
  - "Gambling" by drawing action cards when optimism level was below 10% felt similar to how every action taken when suffering from depression felt like a gamble.
- Divyesh rolled for AP when it was Ashutosh's turn, he got a 6, we peer pressured Ashutosh to roll instead of taking the 6 and he got 1.
- Ashutosh drew a "--1 `Animal`" action card, we cheered him for an encore, and he got "+1 `Animal`", making it so he ended his turn with +1 `Animal` skill level.

#block(height: 1fr)[
  #photo-gallery(
    columns: 3,
    imgs: (
      (path: "IMG_20250308_200600058.jpg", caption: "Ashutosh's Token", label-text: "A-token-photo"),
      (path: "IMG_20250308_200541249.jpg", caption: "Divyesh's Token", label-text: "D-token-photo"),
      (path: "IMG_20250308_200545983.jpg", caption: "Herschel's (my) Token", label-text: "H-token-photo"),
    ),
  )
]

// -- PAGE END 6/7

#rect(
  height: 10em,
  stroke: none,
)[
  #photo-gallery(
    columns: 3,
    imgs: (
      (path: "IMG_20250308_161747799.jpg", caption: "Meeting up to play", label-text: "all-of-us-photo"),
      (path: "IMG_20250308_191637941.jpg", caption: "Discusing Moves", label-text: "discussion-photo"),
      // (path: "IMG_20250308_191642770.jpg", caption: ""),
      (path: "IMG_20250308_200427006.jpg", caption: "Final Positions", label-text: "final-hex-grid-photo"),
    ),
  )
]

#par[
  #box(width: 1fr)[
    #figure(
      image(
        "hex-grid-drawing.png",
        fit: "contain",
      ),
      kind: "Photo",
      supplement: "Photo",
      caption: "Final Map",
    ) <final-map-photo>
  ]
  #box(
    width: 3fr,
    quote(
      "The game is really fun to play with friends. Although the learning curve is a bit steep and the game is kinda slow, working cooperatively with friends and building up optimism (actual and mechanistic) to fill the map is really fun.",
      block: true,
      attribution: "Divyesh",
    ),
  )
]

= Conclusion

Once I got hang of how to use optimism as a mechanic, I was able to use my personal experience with fighting depression as inspiration. I tried my best to represent my feelings as game mechanics. Similar to how starting the journey to heal depression feels extremely difficult and slow, the game starts slow and feels like we made no progress. Every move felt like a gamble, it might either make me feel better, or it might worsen the situation. However, with the help of my friends, I persevered, and slowly, but surely got better. After a while my recovery started accelerating and I was able to study, and do everyday tasks which felt like a drag. Everytime something positive happened, be it playing games with my friends or getting to pet a stray cat, it boosted my moral. It feels good to look back at the game screenshots, photos, and chat messages.

This was the first board game I made and there were many oversights, but I trusted in my friends to give me good feedback and they delivered. As for the core gameplay, I believe I was able to weave the feeling of optimism through hope into the game mechanics.

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
      / Garbage: Raw materials that can be #link(<Transmute>)[transmuted] into #link(<Resources>)[resources]. <Garbage>
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

// -- PAGE END 7/7
