#import "../template.typ": *
== Falling Object Model
The motion of a falling object under the influence of gravity and air resistance can be modeled using a differential equation.
Let *v(t)* be the velocity of the object at time *t*. The differential equation is:
$ (d v)/(d t) = g - (gamma/m) v $
where *g* is the acceleration due to gravity, $gamma$ is the drag coefficient,
and *m* is the mass of the object.

Variables: t, m, g, $gamma, v(t)$\
Units:
- *t*: seconds (s)
- *m*: kilograms (kg)
- *g*: meters per second squared (m/s²)
- $gamma$: kilograms per meter (kg/m)
- *v(t)*: meters per second (m/s)

== Real World Modelling Scenario
Consider the following assumptions:
+ There is a crop field where there is a certain population of pests that damage the crops.
+ To control the pest population, a pesticide is sprayed at regular intervals.
+ At one such interval, the pesticide kills a constant number of pests in the whole field called the predation rate.
+ The pests reproduce at a rate proportional to their current population.
+ time is measured in the intervals between pesticide applications.

*Modelling:*

Let *P(t)* be the pest population at time *t*.

Then according to Assumption 4, the growth of the pest population can be modeled as:
$ (d P)/(d t) alpha P $

According to Assumption 3, the pesticide kills a constant number of pests, say *k*, at each interval.

Thus, the overall model becomes:
$ (d P)/(d t) = gamma P - k $
where $gamma$ is the reproduction rate constant.

= Qualitative Analysis
Qualitative Study of Differential Equations involves analyzing the behavior of solutions without finding explicit solutions.

== Autonomous and Non-Autonomous Equations
Consider the differential equation:
$ (d y)/(d x) = f(x, y) $
This is a non-autonomous first-order differential equation.

Consider the differential equation:
$ (d y)/(d x) = g(y) $
This is an autonomous first-order differential equation.

#note-box[
  Only autonomous equations are considered for qualitative analysis.
]

== Steps for Qualitative Analysis
+ Identify Equilibrium/Critical/Fixed Points:\

  Set $display((d y)/(d x) = 0)$ and solve for *y* to find equilibrium points.

+ Phase Diagram:

  Plot the equilibrium points on the *y*-axis and indicate the direction of change (increasing or decreasing) in each interval.

+ Slope field / direction fields:

  A direction field is a graphical representation of the slopes of solutions at various points in the plane.
  + To draw a direction field, select a grid of points in the *xy*-plane.
  + At each point, compute the slope given by the differential equation.
  + Draw a small line segment at each point with the computed slope.

+ Bifurcation Diagram:

  A bifurcation diagram shows how the equilibrium points change as a parameter in the differential equation is varied.
  (y vs bifurcation parameter)
  + Identify the bifurcation parameter in the differential equation.
  + Vary the bifurcation parameter and find the equilibrium points for each value.
  + Plot the equilibrium points against the bifurcation parameter to visualize the bifurcation diagram.

+ Stability Analysis:

  Analyze the stability of equilibrium points by examining the sign of the derivative of the right-hand side of the differential equation at those points.
  + If the derivative is negative at an equilibrium point, it is stable (attracting).
  + If the derivative is positive at an equilibrium point, it is unstable (repelling).
  + If the derivative is zero at an equilibrium point, it is neither stable nor unstable  (neutral).
  + Use the phase diagram and direction fields to visually confirm the stability of equilibrium points.

== Example of Qualitative Analysis
#example[
  Discuss the qualitative analysis of the falling object model given by the differential equation:
  $ (d v)/(d t) = 9.8 - v/5 $

  #solution[
    Rewrite the equation as, $ (d v)/(d t) = (49 - v)/5 $
    + Equilibrium solution:\

      $"Set" display((d v)/(d t) = 0)$

      => $49 - v = 0$\
      => $v = 49$ m/s\

    + Phase Diagram:(dt vs v)\
      The equilibrium point is at *v* = 49 m/s.

      $ f(v) = (49 - v)/5 $
      Rearranging, we have:
      $ v/49+f(v)/9.8 = 1 $

      #figure(
        image("../assets/phase-diagram-qualitative-analysis.png", width: 80%),
        caption: [Phase diagram for the D.E,\ x-axis -> v,\ y-axis -> f(v)],
      ) <fig-phase-diagram-qualitative-analysis>

    + Slope field/ Direction field table
      #table(
        columns: 4,
        [v], [sign of v], [Behaviour of v], [Arrow Direction],
        [v < 49], [+ve], [increasing], [#rotate(-45deg, [$->$])],
        [v=49], [zero], [no change], [-],
        [v>49], [-ve], [decreasing], [#rotate(45deg, [$->$])],
      )

    #note-box[
      Detail Study of slope field gives the nature of the solution.
    ]
  ]
]
