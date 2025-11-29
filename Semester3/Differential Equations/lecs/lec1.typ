#import "../template.typ": *

= Introduction to Differential Equations

== Need of Differential Equations
Differential equations are essential tools for modeling systems that involve *change* or *motion*.
They help us describe the relationships between a function and its derivatives — enabling prediction of future behavior of systems based on current conditions.

Some common applications include:
- Modeling population growth and decay
- Describing motion of objects (Newton’s laws)
- Representing electrical circuits
- Modeling spread of diseases or epidemics
- Predicting stock prices and economic changes

== Use of Differential Equation in Data Science
In *Data Science*, differential equations play a crucial role in:
- Modeling *continuous-time processes* such as temperature change or chemical concentration.
- Describing *dynamic systems* used in time series forecasting and control systems.
- Optimizing *machine learning models* (e.g., gradient descent as an iterative differential process).
- Defining *neural differential equations*, where model parameters evolve according to differential laws.

Mathematical models derived from data often lead to *ordinary differential equations (ODEs)* or *partial differential equations (PDEs)* that capture relationships among variables.

== Differential Equations

#definition(title: [Differential Equation])[
  A *Differential Equation* is an equation that relates a function with one or more of its *derivatives*.
  It expresses how a quantity changes with respect to another.

  Mathematically, a differential equation can be represented as:

  $ F(x, y, y', y'', ..., y^{(n)}) = 0 $

  where:
  - $x$ is the *independent variable*,
  - $y$ is the *dependent variable* (function of $x$),
  - $y', y'', ..., y^{(n)}$ are the *derivatives* of $y$ with respect to $x$.

  #example[
    $y'' + 3y' + 2y = 0$
    is a *second-order linear homogeneous differential equation*.
  ]
]

== Classification of Differential Equations
Differential equations can be classified based on the following criteria:

- *Order*: The highest derivative present in the equation.
- *Degree*: The power of the highest derivative (when the equation is polynomial in derivatives).
- *Linearity*: Whether the dependent variable and its derivatives appear linearly.

For example:
- First-order ODE: $y' + 2y = 5$
- Second-order nonlinear ODE: $y'' + y(y')^2 = 0$
