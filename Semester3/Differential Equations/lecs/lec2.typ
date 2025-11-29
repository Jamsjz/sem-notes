#import "../template.typ": *

#pagebreak()
= Solution of Differential Equations

== Types of Variables in Differential Equations
Differential equations involve different types of variables that define how the function behaves and changes. These variables are essential for setting up the correct model.

=== Independent Variables
The *independent variable* is the quantity upon which other quantities depend.
It is typically represented as *x*, *t*, or *r* depending on the context.

Example:
In $y' = 3x^2$, the variable *x* is the independent variable.

=== Dependent Variables
The *dependent variable* is the function that depends on the independent variable.
It represents the unknown quantity we aim to find.

Example:
In $y' = 3x^2$, *y* is the dependent variable because its value changes according to *x*.

=== Parameters
A *parameter* is a constant that affects the behavior or family of solutions but remains fixed for a particular solution.  //TODO: clarify
Parameters determine the shape or scale of the solution curve.

Example:
In $y = C e^(2x)$, *C* is a parameter.

== Solution of Differential Equation
#definition(title: [Solution of Differential Equation])[
  The *solution of a differential equation* is a function that satisfies the equation for all values of the independent variable within a given interval.

  Formally, if a function $y = φ(x)$ satisfies the equation
  $ F(x, y, y', y'', ..., y^{(n)}) = 0 $
  then, the function $y = phi(x)$ is called the *solution* of the differential equation.
]

== General Solution
A *general solution* of a differential equation includes *arbitrary constants* that represent an infinite family of solutions.

#note-box[*A general solution of a differential equation contains as many arbitrary constants as the #underline[order of the differential equation.] *]//link


#example[
  $ (d y)/(d x) = 2x $
  Using separation of variables,
  $ d y = 2x d x $
  Integrating both sides gives,
  $ y & = x^2 + c_1 $
  where *C* is an arbitrary constant representing the general solution.
]

== Order of Differential Equation
The *order* of a differential equation is the *highest derivative* of the dependent variable present in the equation.

Example:
- *First order:* $ (d y)/(d x) + y = 0 $
- *Second order:* $ (d^2 y)/(d x^2) + 3y = 0 $

Mathematically, for a differential equation
$
  a_n(x) (d^n y)/(d x^n) + a_(n-1)(x) (d^(n-1) y)/(d x^(n-1)) + ... + a_1(x) (d y)/(d x) + a_0(x) y = 0
$
the *order* is *n*.

== Integral Curves
#definition(title: [Integral Curves])[
  The *integral curve* of a differential equation,
  $ F(x, y, y', y'', ..., y^{(n)}) = 0 $<eqn-differential-equation>
  is the *graph of its solution function*,
  $ y = phi(x)+c_1+c_2+...+c_n = phi(x) + C $
  in the coordinate plane.

  It represents the set of all points $(x, y)$ that satisfy the differential equation in @eqn-differential-equation.
  Different values of the arbitrary constant *C* produce different integral curves from the general solution. The set of all such curves forms a *family of integral curves*.

  #example[
    For $y = x^2 + C$, each value of *C* gives a distinct *parabola*, and all such parabolas together form a *family of integral curves*.
  ]

  #note-box[No two integral curves in the family of curves intersect each other.]
]

== Initial Value Problem
#definition(title: [Initial Value Problem (IVP)])[
  An *Initial Value Problem (IVP)* consists of a differential equation together with an *initial condition* that specifies the value of the dependent variable (and possibly its derivatives) at a particular point.

  Formally,
  $ (d y)/(d x) = f(x, y), quad y(x_0) = y_0 $ is a common form of an IVP of first order differential equation,
  where $y(x_0) = y_0$ is the initial condition and $f(x, y)=(d y)/(d x)$ is the differential equation.

  The goal is to find a *particular solution* *y(x)* that satisfies both the differential equation and the initial condition.

  #note-box[*An Initial Value Problem (IVP) has a unique particular solution that satisfies both the differential equation and the initial condition.*]
]

=== Initial Condition
The *initial condition* provides specific values for the dependent variable (and possibly its derivatives) at a given value of the independent variable.


=== Solution Steps
To solve an *Initial Value Problem (IVP)*:
+ Input: Differential equation $(d y)/(d x) = f(x, y)$ and initial condition $y(x_0) = y_0$
+ Find the general solution of the differential equation.
+ Substitute initial condition in general solution.
+ Output: The particular solution satisfying both the differential equation and the initial condition

#example[
  Solve the IVP: $(d y)/(d x) = 2x ,quad y(0) = 3$

  The general solution for given differential equation is
  $ y = x^2 + C $
  Substituting the initial condition $y(0) = 3$ gives,
  $
              3 & = 0 + C \
    therefore C & = 3
  $
  Thus, the particular solution is
  $ y = x^2 + 3 $
]

== Particular Solution
A *particular solution* of a differential equation is a specific solution obtained by assigning particular values to the arbitrary constants in the general solution.

#example[
  For the differential equation
  $ (d y)/(d x) = 2x $
  the general solution is
  $ y = x^2 + C $
  By choosing *C = 5*, we get a particular solution:
  $ y = x^2 + 5 $
]


// == Particular Integral
// #definition(title: [Particular Integral])[
//   The *particular integral* of a differential equation is a specific solution that satisfies the non-homogeneous part of the equation.
//   It is obtained by finding a function that directly addresses the non-homogeneous term.

//   The particular integral is a particular solution that does not include arbitrary constants.
// ]

// == Non homogeneous part of Differential Equation
// In a *non-homogeneous differential equation*, the *non-homogeneous part* refers to the term that is not equal to zero.
// It represents an external influence or forcing function that drives the behavior of the system.

// == Difference between Particular Solution and Particular Integral
// The *particular solution* of a differential equation is a specific solution obtained by assigning particular values to the arbitrary constants in the general solution.
// In contrast, the *particular integral* is a specific solution that satisfies the non-homogeneous part of the equation without involving arbitrary constants.

// #example[
//   For the differential equation
//   $ (d y)/(d x) = 2x + 3 $
//   the general solution is
//   $ y = x^2 + 3x + C $
//   By choosing *C = 5*, we get a particular solution:
//   $ y = x^2 + 3x + 5 $

//   The particular integral addressing the non-homogeneous term *3* is:
//   $ y_p = (3/2)x $
// ]


= Real World Models using Differential Equations
== Bacteria Growth Model
The growth of a bacteria population can be modeled using a differential equation.
Let *P(t)* be the population at time *t*. The rate of change of the population is proportional to the current population:
$ (d P)/(d t) = k P $
where *k* is the growth rate constant.

== Radioactive Decay Model
The decay of a radioactive substance can be described by a differential equation.
Let *N(t)* be the quantity of the substance at time *t*. The rate of change of the quantity is proportional to the current quantity:
$ (d N)/(d t) = -λ N $
where *λ* is the decay constant.

== Newton's Law of Cooling
Newton's Law of Cooling states that the rate of change of the temperature of an object is proportional to the difference between its temperature and the ambient temperature.
Let *T(t)* be the temperature of the object at time *t*, and *T_a* be the ambient temperature. The differential equation is:
$ (d T)/(d t) = -k (T - T_a) $
where *k* is a positive constant related to the cooling rate.

== Population Growth Model
The growth of a population can be modeled using a differential equation.
Let *P(t)* be the population at time *t*. The rate of change of the population can be modeled as:
$ (d P)/(d t) = r P (1 - (P/K)) $
where *r* is the intrinsic growth rate and *K* is the carrying capacity of the environment.

== Chemical Reaction Model
The rate of a chemical reaction can be described by a differential equation.
Let *C(t)* be the concentration of a reactant at time *t*. The rate of change of the concentration can be modeled as:
$ (d C)/(d t) = -k C^n $
where *k* is the rate constant and *n* is the order of the reaction.
