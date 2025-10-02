#align(center+horizon)[
#text(size: 5em)[Computational Statistics Formulae]
]

#set page(columns: 2, margin: 1em)
#set page(columns: 2, margin: 1em)

#pagebreak()

= Random Variable
- #rect(width: 100%)[X $->$ function: \
  $quad$ input: $Omega: { xi in Omega}$ where $xi$ one possible event. \
  $quad$ output: $R_X -> ("Support of X")$
]
#grid(columns: (1.5fr, 1fr), 
  [
  #align(center)[*Discrete*]
  #rect(width: 100%)[
      *PMF:*\
      $quad$ $P_x (x) = P[X=x]$\

      *CDF:*\
      $quad$ $F_X (x) = P[X<=x]$
    ]

  ],[
  #align(center)[*Continuous*]
  #rect(width: 100%)[
      *PMF:*\
      $quad$ $f(x)$\
      *CDF:*\
      $ F(x)=integral_(-oo)^x f(t) d t $
  ]
],

rect(width: 100%, height: 17em)[
  *Expectation*\

  $ EE[X] = sum x dot P_X (x)=mu $
  *Variance*\

  $ "Var"[X] &= EE[X^2]-EE[X]^2 \ &= EE[(X-mu)^2] $

  $ EE[X^2] =sum x^2 dot P_X (x)  $

  $EE[X]$ is *linear*. $EE[c]=c$\

  $"Var"[X+c] = "Var"[X]$  
],
rect(width: 100%, height: 17em)[
  *Expectation* $EE[X]=$\
    $ integral_R_X x dot f(x) d x $
  *Variance*\ $"Var"[X]=$\  
    $ integral_R_X d^2f(x)d x $
    where,\ $d=x-mu$  
  ]
)

= Discrete Probability Distribution
#let myline = line(length: 100%, stroke:(dash: "dashed"))

#rect[
  == Binomial Distribution
  Notation: $X tilde "Bin"( n ,p)$
  $ (a+b)^n = sum_(r=0)^n binom(n,r) a^(n-r) b^r $
  #myline
  $ P_X (r) = binom(n,r) q^(n-r) p^r $
  #myline
  #grid(columns: (1fr, 2fr),column-gutter: 1em, [
    $E[X]=n p$
    $"Var"[X]=n p q$  
  ],[
    == Bernoulli Distribution
    $X tilde "Bin"(1,p)$ is a Bernoulli Distribution.  
  ])
]

#rect(width: 100%)[
  == Poisson Distribution
  Notation: $X tilde "Poisson"(lambda)$  
  #grid(columns: (1fr, 2fr),
  [
    $ P_x (x) = (e^(-lambda) lambda^x)/(x!) $
  ],
  [
    $ EE[X]=lambda="Var"[X] $
  ])
  $lambda$: avg. rate of event occuring\
  $x$: no. of occuring events

  *_Example_*:\ On an avg. if 20 people visit a museum/hr, what is the probability that x no. of people visit the museum in one hour?
]

#rect(height: 21em)[
  == Geometric Distribution
  Notation: $X tilde "Geom"(p)$  

  2 def:
  + $X$: $\#$ failures before $1^"st"$ success
  + $Y$: $\#$ failures until $1^"st"$ success
  Clearly, $Y=X+1$

  Note
  #grid(columns: (1fr, 1fr), 
    [
  $ sum_0^infinity k p^k = p/q^2 $
],[
  $ sum_0^infinity k^2 p^(k-1) = (p(1+p))/(q^2) $
    #v(10pt)
],
    [
    - $P[X=x]=q^x p $
    - $P[Y=y]=q^(y-1)p$
    - $F_X(x)=1-q^(x+1)$
    - $F_Y(y)=1-q^y$ 
    ],
    [
    - $EE[X] = q\/p$
    - $EE[Y] = 1\/p$
    - $"Var"[X "or" Y]=q\/p^2$
    ]
  )
]

#rect(height: 29em)[
  == Negative Binomial Distribution
  Notation: $X tilde "Geom"(p)$

  2 def:

  + $X$: $\#$ failures before $r^"th"$ success
  + $Y$: $\#$ failures until $r^"th"$ success
  Clearly, $Y=X+r$

  Note,\
  -ve Binomial Distribution is the sum of $r$ Geometric Distribution. i.e.:
  $ X=X_1+X_2+X_3+ ... + X_r $
  $ Y=Y_1+Y_2+Y_3+ ... + Y_r $

  #grid(columns: (1.2fr, 1fr), 
    [
    $ P[X=x]=binom(x+r-1,r-1) q^x p $
    $ P[Y=y]=binom(y-1,r-1) q^(y-1)p $
    $F_X(x)=1-q^(x+1)$\
    $F_Y(y)=1-q^y$ 
    ],
    [
    #v(5em)
    $EE[X] = r q\/p$\
    $EE[Y] = r\/p$\
    $"Var"[X "or" Y]=r q\/p^2$\
    ]
  )
]

#rect(width: 100%)[
  == Hypergeometric Distribution
  Notation: $X tilde "HG"(N,n,m)$\
  where,\
  $N->$ Total population\
  $n ->$ Sample Size\
  $m->$ Total success in $N$\
  $x->$ Total success in $m$  

  $ P_X (x) = ( binom(n,x) binom(N-m,n-x))/( binom(N,n) ) $
]
#pagebreak()

#place(top+center, scope: "parent", float: true, [= Continuos Probability Distributions])

$lambda ->$ avg. *rate parameter*, $beta->$ *scale parameter* (avg. waiting time), $alpha->$ *shape parameter* ($\#$ required events). 

#rect(width: 100%)[
== Uniform Distribution
Notation: $X tilde "Uniform"(a,b)$  
$ 
f(x) &= cases(f(x) quad "if" a<=x<=b\ 0 quad "otherwise")\
mu&=(a+b)/2 , quad sigma^2 = ((b-a)^2)/12\
F_X (x) &= (x-a)/(b-a)\
x_m &=(a+b)/2
$
]

#rect(width: 100%)[
== Exponential Distribution<expdist>
Notation: $X tilde "Exponential"(lambda)$  

*Holds Memoryless property*

$X->$ waiting time before another event
$ 
f(x) &= lambda e^(-lambda x)\
EE[X]&=1/lambda,quad  "Var"[X]=1/lambda^2\
beta &= 1/lambda
$
]

#rect(width: 100%)[

== Gamma Distribution
Notation: $X tilde "Gamma"(p)$  

Sum of $alpha$ exponential distribution and events occur independently over time.

*Holds Memoryless property*

$X->$ $alpha$ events in $x$ time if avg rate is $lambda$.\
$beta->$ avg. waiting time for next event.

$ 
Gamma(alpha) &= (alpha-1)! "or" integral_0^infinity t^(alpha-1) e^(-t) d t \
gamma(alpha, lambda x) &= integral_0^(lambda x) t^(alpha-1) e^(-t) d t
$

#myline
$
f(x) = (lambda^alpha x^(alpha-1) e^(-lambda x))/(Gamma(alpha))\
EE[X] = alpha beta, quad "Var"[X] = alpha beta^2\
F_X (x) = (gamma(alpha, lambda x))/Gamma(alpha)
$
#myline

*We get Exponential Distribution if $alpha=1$*

*We get Erlang Distribution if $alpha in ZZ_+$ where,*
$ F_X (x) = 1- sum_(n=0)^(k-1) 1/n! e^(-lambda x)(lambda x)^n $

]

#rect(width: 100%)[
  == Normal Distribution

  $ 
  f(x) &= 1/(sigma sqrt(2pi)) e^(-1/2 ((x-mu)/sigma)^2)\
  f(z) &= 1/(sqrt(2pi)) e^(-z^2/2)\
  Z &= (X-mu)/sigma "and" EE[Z] = 0, "Var"[Z] = 1
  $

  #myline

  === Normal Approximation
  Mind the correction factor.
  $ 
  P[a<=X<=b] &= P[a-0.5<=X<=b+0.5]\
  P[a<X<b] &= P[a+0.5<X<b-0.5]\
  $

  
  
  ==== Binomial Distribution
  When $n$ is large and $p$ or $q$ is small, We approximate probability with $mu=n p$ and $sigma = sqrt(n p q)$.
  ==== Poisson Distribution
  When $lambda$ is large, We approximate probability with $mu=sigma^2=lambda$   
]

#rect(width: 100%)[
  == Log-Normal Distribution
  $X "is log-normal" -> Y=ln(X) "is normal"->X=exp(Y) "is log-normal"$\
  $X tilde "Log-Normal"(mu, sigma^2)$ $EE[Y] = mu, "Var"[Y] = sigma^2$.  

  $ EE[X] = e^(mu+sigma^2/2) quad "Var"[X]= e^(2mu+sigma^2)(e^(sigma^2)-1)$

  $f(x) &= 1/(x sigma sqrt(2pi)) e^(-1/2 ((ln(x)-mu)/sigma)^2)$\, $x in R_(+)$  
  #v(0.2em)
]

#rect(width: 100%)[
  == Weibull Distribution
  $
  f(x) = alpha lambda^alpha x^(alpha-1) e^(-(lambda x)^alpha)\
  F(x) = 1 - e^(-(lambda x)^alpha)\
  mu = beta dot Gamma(1+1/alpha)\
  sigma^2 = beta^2 [Gamma(1+2/alpha) - Gamma(1+1/alpha)^2]
  $
]

#rect(width: 100%)[
  == Beta Distribution

  Notation: $X tilde "Beta"(alpha, beta)$

  Used in Bayesian statistics and modeling probabilities.

  $
  f(x) = frac(x^(alpha-1)(1-x)^(beta-1), B(alpha, beta)), quad 0 < x < 1
  $

  where,
  $B(alpha, beta) = integral_0^1 t^(alpha-1)(1 - t)^(beta-1) d t$  
  $= frac(Gamma(alpha) Gamma(beta), Gamma(alpha + beta))$

  #myline

  $
  EE[X] = alpha/(alpha + beta), quad 
  "Var"[X] = alpha beta / ((alpha + beta)^2 (alpha + beta + 1))
  $
]

#rect(width: 100%)[
  == Cauchy Distribution

  Notation: $X tilde "Cauchy"(x_0, gamma)$

  Heavy-tailed distribution with undefined mean and variance.

  $
  f(x) = 1/(pi gamma (1 + ((x - x_0)/gamma)^2))
  $

  $
  F(x) = 1/pi arctan((x - x_0)/gamma) + 1/2
  $

  Note:\
  - $EE[X]$ is *undefined*\
  - $"Var"[X]$ is *undefined*
]

Find the level curve at z=30 for the function:
$ 𝑓(𝑥, 𝑦) = 100 − 𝑥^2 − 𝑦^2 = c  $


