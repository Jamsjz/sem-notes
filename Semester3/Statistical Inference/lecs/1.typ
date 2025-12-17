#import "../template.typ": *
= Sampling and Some Sampling Distributions
== Sampling Distribution
#definition(
  title: "Sampling Distribution",
  footer: [
    #note-box[
      A sample is a subset taken from the whole population.
    ]
  ],
)[
  Suppose you have a population from which you take every possible sample of
  n entities's attribute denoted by $S={S_1, S_2, S_3, ...}$ where $S_i$
  is the tuple of values of attributes of the $n$ entities in the $i^"th"$
  sample $s.t.$ $S_i=(v_1, v_2, v_3, dots, v_n)$ where $v_i$ is the value
  of the attribute of the $i^"th"$ entity in $S_i$.
  Then the distribution of some summary statistics of each sample
  gives the sampling distribution of the sample statistics.

]

#example[
  Take the values $1,2,3,4,5$. Here, $mu=3, s=sqrt(2)$

  Let's take every possible sample of size 2 from this set.\
  {1,2}, {1,3}, {1,4}, {1,5}, {2,3}, {2,4}, {2,5}, {3,4}, {3,5}, {4,5}

  Taking the mean of each sample,\
  1.5, 2, 2.5, 3, 2.5, 3, 3.5, 3.5, 4, 4.5

  The frequency distribution of this sample mean is the sampling distribution of sample mean.
  #grid(columns: (1fr, 4fr))[
    #figure(
      caption: [Frequency Distribution of sample mean],
      table(
        columns: 2,
        table.header([*x*], [*f*]),
        [1.5], [1],
        [2], [1],
        [2.5], [2],
        [3], [2],
        [3.5], [2],
        [4], [1],
        [4.5], [1],
      ),
    )<tab-sampling-distribution>
  ][
    #figure(
      image("../assets/dot-plot-sampling-distribution.png", width: 80%),
      caption: [Distribution of the sample mean],
    ) <fig-dot-plot-sampling-distribution>
  ]

  #important-box()[
    In the above example, the sample statistics was mean,
    but it could have been any other sample statistics.\
    We used sample mean as the sample statistics so, the
    frequency distribution in @tab-sampling-distribution is called the
    *sampling distribution of the sample mean*.
  ]
]

== Recalling Normal Distribution
*Normal Distribution:*
If $X~N(mu, sigma^2)$ then the PDF of $X$ is:
$ f(x) = 1/(sigma sqrt(2pi) ) e^(-1/2 ((x-mu)/sigma)^2) $
and the CDF is:
$ F(x) = integral_a^b f(x) d x $

*Standard Normal Distribution:*
If $Z~N(0,1)$ then the PDF of $Z$ is:
$ f(x) = 1/sqrt(2pi) e^(-1/2 z^2) $

#note-box[
  The Normal distribution is a family of curve, so it is not unique.
  While the standard normal distribution is a normal distribution curve so it is a single unique curve. This makes it easy to pre-compute the integrals of the CDF and store it in a table known as *z-table*.

  We will be dealing with *z-table* and standard normal distribution.
  If a variable is not standard normal, we will standardize it.

  For standardization, use the following variable transformation.
  $ Z=(X-mu)/sigma $
]<note-var-transformation>

== Central Limit Theorem
#theorem(title: "Central Limit Theorem")[
  The Central Limit Theorem (CLT) states that if you take sufficiently large samples from any population, the distribution of the sample means will be approximately a normal distribution, regardless of the original population's distribution.
]

#important-box[
  Here, if $overline(X)~N(mu, sigma_overline(X)^2)$ is a random variable that models the mean of a sample. To standardize this we have to use the following variable transformation:
  $
    Z_overline(X)
    = (overline(X) - mu_overline(X))/(sigma\/sqrt(n) )
    = (overline(X)-mu)/(sigma\/sqrt(n))
  $
  where,\
  $overline(X)$ = sample mean random variable\
  *$mu_overline(X)$ = $mu$ = mean of sample means = population mean* \
  $sigma_overline(X)$ = $sigma\/sqrt(n)$ = standard error
]

== Finite Population Correction Factor
The finite population correction factor (FPC) is a correction factor
used to correct the standard error when sampling where the sample size is
less than 5% of the total population.
$"FPC" = (N-n)/(n-1)$

#important-box(title: "Sampling Distribution of finite population")[
  The sampling distribution of sample mean, $overline(X) ~ N(mu, sigma^2/n ( N-n )/(n-1))$
  where,\
  $mu$ = population mean\
  $sigma$ = population standard deviation
]
