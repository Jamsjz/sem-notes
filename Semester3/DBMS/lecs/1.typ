#import "../template.typ": *

= Introduction to DBMS
#definition(title: "Data")[
  Data is raw facts or figures that have no meaning on their own.
]<def:data>

#definition(
  title: "database",
)[
  Collection of organized data that can be accessed, managed and updated.
  - Stored in *rows and columns*.
  - Rows are called tuples or records
  - Columns $->$ Domains or Attribute
  - Can have many tables
]
#definition(
  title: "Database Managemenet System (DBMS)",
)[
  Software to create, manage and use databases
  #example[
    PostgresSQL, MySQL
  ]
]

== Characterstics of DBMS <ssec-characterstics-of-dbms>
- Data Organization
- Data Security
- Data Integrity
- Multi User Access
- Query Processing
- Reduced Redundancy

== DBMS Necessity
It is derived from the  #link("ssec-characterstics-of-dbms", [characterstics of DBMS])

== DBMS Application
- Enterprise Information
  - Sales
  - Accounting
  - Human Resources
  - Manufacturing
- Banking and Finance
- Universities
- Airlines
- Telecommunication
- Web-Based Services
  - Social Media
  - Online Shopping
  - Online Ads
  - Document Storage
  - Navigation Systems

== Database Systems vs File Systems
#table(
  columns: 3,
  [*Basis*],[*DBMS*],[*FS*],
  [Flexibility],[],[],
  [Centralized],[],[],
  [Implementation Simplicity],[],[],
  [Data Accessibility],[],[],
  [Efficiency],[],[]
)
