#import "template.typ": project

#project(
  title: "Differential Equations",
  authors: ("Bhashkar Paudyal",),
  abstract: [This course was taught by Prof. Dil Bahadur Gurung. It teaches Differential Equations],
  date: datetime.today().display(),
)[
  #include "lecs/lec1.typ"
  #include "lecs/lec2.typ"
  #include "lecs/lec3.typ"
]
