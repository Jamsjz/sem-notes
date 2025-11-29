#import "template.typ": project

#project(
  title: "Statistical Inference",
  authors: ("Bhashkar Paudyal",),
  abstract: [This course was taught by Prof. Dhiraj Giri. It teaches statistical Inference.],
  date: datetime.today().display(),
)[
  #include "lecs/1.typ"
  #include "lecs/2.typ"
]
