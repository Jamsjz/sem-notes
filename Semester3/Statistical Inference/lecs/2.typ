#import "../template.typ": *

== Sampling Distribution of Sample Proportion
=== Proportion
Suppose there are 100 students in a class. If 30 students like
maths, 40 like science and 30 like english. Then the proportion of liking
maths : science : english = 3:4:3
That means, 30% of them maths, 30% like english and 40% like maths.
This proportion can be written as a number from 0 to 1 like 0.3, 0.3, and 0.4.

Sample Proportion can be thought of relative frequency in the frequency
distribution in @tab-sampling-distribution.

#grid(columns: 2, column-gutter: 1em)[
  #table(
    columns: 3,
    align: horizon + center,
    table.header([*x*], [*f*], [*p = f/$sum f$*]),
    [1.5], [1], [0.1],
    [2], [1], [0.1],
    [2.5], [2], [0.2],
    [3], [2], [0.2],
    [3.5], [2], [0.2],
    [4], [1], [0.1],
    [4.5], [1], [0.1],
  )
][
  === Sampling Distribution of Sample Proportion
  Consider the random variable, $p~N(P, (P Q)/n)=N(mu_p, sigma_p^2)$
  #important-box[
    The variable transformation is with the following formula:
    $ Z_p = (p-P)/(sqrt((P Q)/n)) $
  ]
]

Here, $P$ is the true population proportion, $Q=1-P$.
#pagebreak()
== Sampling Distribution of Difference Between Sample Mean
This distribution can be modeled by
$ overline(X_1) - overline(X_2) ~ N(mu_1-mu_2, sigma_1^2/n+sigma_2^2/n) $
where,\
$mu_(overline(X_1) - overline(X_2) = mu_1 - mu_2)$ \
$sigma_(overline(X_1) - overline(X_2) = sigma_1^2/n+sigma_2^2/n)$

== Sampling Distribution of Difference Between Sample Proportion
This distribution can be modeled by
$ p_1 - p_2 ~ N(P_1-P_2, (P_1Q_1)/n_1 + (P_2Q_2)/n_2 ) $
where,\
$mu_(p_1-p_2) = P_1-P_2$ \
$sigma_(p_1-p_2) = (P_1Q_1)/n_1 + (P_2Q_2)/n_2$
