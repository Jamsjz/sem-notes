#import "template.typ": project

#project(
  title: "Database Management System",
  authors: ("Bhashkar Paudyal",),
  abstract: [This is a course taught by *Rupak Gyawali*. It teaches the fundamentals of Database Design, SQL, DBMS concepts and NoSQL.],
  date: datetime.today().display(),
)[
  #include "lecs/1.typ"
]
