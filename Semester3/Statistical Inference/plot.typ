#import "@preview/cetz:0.4.1"
#let signsrtheta(
  r: 4,
  t: 60deg,
  pcaption: [$P(r,theta)$],
  color: blue,
  caption: [],
  acaption: [],
) = [
  #cetz.canvas({
    import cetz.draw: *
    line((0,0), (angle: t, radius: r), mark: (end: ">"), stroke: color)
    line((0,0), (angle: 0deg, radius: calc.abs(r)), mark: (end: ">"))
    line((0,0), (angle: 0deg, radius: calc.abs(r)+1), stroke: (dash: "dashed"))
    arc((1,0), start: 0deg, stop: t, mark: (end: ">"))
    content((1.4,0.6), acaption)
    content((calc.abs(r)+1,-0.5), [Reference Axis])
    content((radius: (calc.abs(r)+0.5)*(r/calc.abs(r)), angle: t), pcaption)
  })
  #caption
]

#let polargrid(
  rmax,
  divisions,
  points: (),
  labels: (),
  pfill: red,
  extra: {}
) = [
    #cetz.canvas({
    import cetz.draw: *
    let step =  (360deg/divisions)
    for i in range(1,rmax+1){
      circle((0,0),radius: i, stroke: black.lighten(70%))
    }
    for i in range(divisions){
      line((0,0), (radius: rmax, angle: i*step), stroke: black.lighten(50%))
    }
    line((-rmax, 0), (rmax+1,0), mark: (end: ">"))
    content((rmax+1.5, 0))[x]
    line((0,-rmax), (0,rmax+1), mark: (end: ">"))
    content((0,rmax+1.5))[y]
  
    for i in points{
      let p = i.at(0)
      let r = p.at(0)
      let t = p.at(1)
      circle((radius: r, angle: t), radius: 0.08, fill: pfill, stroke: (thickness: 0.4pt))
      content((rel: (radius: 1,angle: 30deg)))[#i.at(1)]
    }
    extra
  })
]

#let polarcurve(f, rng: range(360), clr: black, radius: 0.01em) = {
  import cetz.draw: * 
  for i in rng{
    let t = (i * (3.14159 / 180))
    let r = f(t)
    circle((radius: r, angle: t), radius: radius, stroke: clr)
  }
}