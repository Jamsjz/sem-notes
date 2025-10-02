#align(center+horizon)[#text(size: 4em)[AI Exam Preparation]]

#set page(margin: 1em)

= Unit 2

== Reinforcement Learning

#figure(
  image("assets/reinforcement-learning.png", width: 50%),
  caption: [Reinforcement Learning],
) <fig-reinforcement-learning>

== Rationality of Agent
Rationality of Agent depends on:
+ *Performance Measure*
+ Prior knowledge (Rememberence and *State*)
+ Possible actions agent can perform (*Actuators*)
+ Agent Perceptions (*Sensors* to perceive *Environment*)

== PEAS Representation
#table(columns: 5,
  [Agents],[Performance Measure], [Environment], [Actuators], [Sensors],
  [Vaccum Cleaner], [Cleanness, Efficiency, Battery Lfe, Noise, Power], [Room, Table, Wood floor, Vaccum Extractor], [Wheels, Brushes, Vaccum Extractor], [Camera, Dirt detection sensor, Cliff sensor, Bump Sensor, Infrared Wall Sensor]
)

== Types of Agent
#table(
  columns: 5,
  [*Agent Type*], [*Memory*], [*Goals*], [*Learning*], [*Suitable For*],
  [*Simple Replex Agent*], [❌],[❌],[❌],[Fully Observable, simple system],
  [*Model/Goal Based Agent*],[✅],[✅],[❌],[Partially Observable, goal driven],
  [*Learning Agent*],[✅],[✅],[✅],[Complex, dynamic, adaptive systems]
)

#pagebreak()

= Unit 3
== State Space
$Omega$ is the set of all possible configurations a system can be in while solving a problem.

*States of a problem*
+ Initial State
+ Goal State
+ Actions, (Rules for actions according to current state)
+ Search
  - Path Cost

== Types of Searching
#table(columns: 2,
  [*Uninformed*], [*Informed*],
  [
  - Depth First Search (stack)
  - Breadth First Search (queue)
  - Depth Limit Search
  - Bidirectional Search
],[
  - Hill Climbing Search
  - Best First Search
  - Greedy Search
  - $A^*$ Search
]
)

== Breadth First Search

#figure(
  image("assets/bfs-example.png", width: 90%),
  caption: [BFS and DFS Example],
) <fig-bfs-dfs-example>

#grid(columns: (1fr, 1fr),
  [
With BFS
  #table(columns: 1, 
    align: left,
    [*Queue*],
    [1],
    [2,3,4],
    [3,4,5,6,7,8],
    [4,5,6,7,8,9,10],
    [5,6,7,8,9,10,11,12],
    [6,7,8,9,10,11,12,13,14,15],
    [7,8,9,10,11,12,13,14,15, 16,17,18],
    [8,9,10,11,12,13,14,15,16,17,18,19,20,21],
    [8,9,10,11,12,13,14,15,16,17,18,19,#text(stroke: green)[20]],
    [$therefore$  20 Found]
  )
],
  [
  With DFS:
  #table(columns: 1,
    [*Stack*],
    [1],
    [4,3,2],
    [4,3,8,7,6,5],
    [4,3,8,7,6,15,14,13],
    [4,3,8,7,6,15,14],
    [4,3,8,7,6,15],
    [4,3,8,7,6],
    [4,3,8,7,18,17,16],
    [4,3,8,7,18,17],
    [4,3,8,7,18],
    [4,3,8,7],
    [4,3,8, 21, #text(stroke: green)[20]],
    [$therefore$  20 Found]
  ),

]
)

== Hill Climbing Search
#figure(
  image("assets/hillclimb-exmample2.png", width: 70%),
  caption: [Hill Climbing Example],
) <fig-hillclimb-exmample2>

*Sort the children cost in descending order then add to stack.*

#grid(columns: 10, rows:1,column-gutter: 1em,
  [*Stacks:*],
stack(rect[S]),
stack(rect[A],rect[D]),
stack(rect[B],rect[D]),
stack(rect[C],rect[E],rect[D]),
stack(rect[E],rect[D]),
stack(rect[F],rect[D]),
stack(rect[G],rect[D]),
)

== Best First Search
There are two lists
- Open List (OL)
- Closed List (CL)

#grid(columns: (1fr,1fr),
  [
  #text(size: 0.85em)[
  Step 1:\
  OL: S(NULL,0)\
  CL: NULL

  Step 2:\
  OL: A(S,1), B(S,3), C(S, 10)\
  CL: [S]

  Step 3:\
  OL: B(S,3), C(S,10), D(A,5+1=6)\
  CL: [S, A]

  Step 4:\
  OL: C(S,10), D(A, 6), E(B, 3+4=7)\
  CL: [S, A, B]

  Step 5:\
  OL: D(A, 6), E(B, 7)\
  CL: [S, A, B, C]\
  *E(C, 16) > E(B, 7) so it is not taken.*

  Step 6:\
  OL: E(B, 7), F(D, 6+2=8)\
  CL: [S, A, B, C, D]\

  Step 7:\
  OL: F(D, 8), G(E, 6+7=14)\
  CL: [S, A, B, C, D, E]

  Step 8:\
  OL: G(E, 14)\
  CL: [S, A, B, C, D, E, F]\
  *F did not have any children*

  Step 9:\
  OL: ...\
  CL: [S, A, B, C, D, E, F, G]\

  G Found


  ]
],
  [
#figure(
image("assets/best-first-example.png", width: 80%),
caption: [Best First Example],
) <fig-best-first-example>

],
)

== $A^*$ Search Algorithm  

#grid(columns: (1fr, 1fr),
  [
  #let f(n: [], gn: 0, hn: 0) = [$f(#n)=g(#n)+h(#n)=#[#gn] + #[#hn]=#(gn+hn)$]

  *Step 1:*\
  We start with node *S*:\
  From *S* we can go to *A and D*\
  #f(n:[A], gn:3, hn:8.5)\
  #f(n: [D], gn: 4, hn: 8)\

  Here, $f(A)<f(D)$ so the path taken is:\
  $S->A$  

  *Step 2:*\
  From *A* we can go to *D* and *B*.\
  #f(n:[D], gn: 8, hn: 8)\
  #f(n:[B], gn: 7, hn: 6)

  Here, $f(B)<f(D)$ so the path taken is:\
  $S->A->B$  

  *Step 3:*\
  From *B* we can go to *E* and *C*\
  #f(n: [E], gn: 12, hn: 6)\
  #f(n: [C], gn: 11, hn: 3)\

  Here, $f(C)<f(E)$ so the path taken is:\
  $S->A->B->C$  

  *Step 4:*\
  From *C* we cannot go anywhere. So we go to next node of *B* i.e. *E*\
  So, the path taken is:\
  $S->A->B->E$  

  *Step 5:*\
  From *E*, we can go to *F* only, so the path taken is:\
  $S->A->B->E->F$  

  Again,\
  From *E* we can go to the goal node *G*.\

  So the final path is:\
  $S->A->B->E->F->G$  
],[

#figure(
  image("assets/astaralgo-eg.png", width: 80%),
  caption: [$A^*$ Search Algorithm],
) <fig-astaralgo-eg>
]
)

== Crypto Arithmetic Problem

#figure(
  image("assets/sendmoremoney.png", width: 80%),
  caption: [Send More Money],
) <fig-sendmoremoney>


== Alpha Beta Pruning
Here, $alpha$ takes greater value and $beta$ takes less value only.

#figure(
  image("assets/alpha-beta-pruning.png", width: 80%),
  caption: [Alpha Beta Pruning],
) <fig-alpha-beta-pruning>

= Unit 4

#figure(
  image("assets/rules-of-inference.png", width: 80%),
  caption: [Rules of Inference],
) <fig-rules-of-inference>

#figure(
  image("assets/logical-eqvalence.png", width: 80%),
  caption: [Logical Equivalence],
) <fig-logical-eqvalence>

== Example of Inference

#figure(
  image("assets/eg-inference1.png", width: 80%),
  caption: [Inference Example 1],
) <fig-eg-inference1>


#figure(
  image("assets/inference-example2.png", width: 80%),
  caption: [Inference Example 2],
) <fig-inference-example2>

== Resolution
Make all hypothethis to $or$ and add $#rect[$perp$]$ (empty clause) to hypothesis.

#figure(
  image("assets/resolution.png", width: 80%),
  caption: [Resolution],
) <fig-resolution>

== FOPL
For all x Roman x typeshit.

#columns(2)[

= Unit 5

== Machine Learning Life Cycle
+ Data Preprocessing
+ Feature Engineering
+ Model Training
+ Model Evaluation
+ Model Deployment
+ Model Serving
+ Model Monitoring

== Information processing pipeline

#figure(
  image("assets/pipeline.png", width: 60%),
  caption: [Information Processing Pipeline],
) <fig-pipeline>
]

#grid(columns: (1fr, 1fr),
  [

  == Components of ML
  - Data
  - Model
  - Features
  - Labels (Target)
  - Learning Algorithm
  - Optimization
  - Testing
  - Regularization
  - Evaluation Metrics
  - Validation
  - Training Process
  - Testing
],
  [
  == Data Visualization Objectives
  - Understand data distribution
  - Explore relationships
  - Detect anamolies
  - Feature Selection
  - Model Interpretation
],
  [
  #v(2em)
  == What to do when you have less data? How do you manage data scarcity?
  - Data Augmentation

]
  , [
  == Data Privacy Methods
  - Transfer Learning
  - Differential Privacy
  - Homomorphic Encryption
  - Federated Learning
]
)
