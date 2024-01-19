#import "ecsproject.typ": *

// Use everything together

#show: doc => use_project(
  title: "My project",
  author: (
    name: "Gherman Nicolisin",
    email: "gn2g21@soton.ac.uk"
  ),
  supervisor: (
    name: "Supervisor name",
    email: none
  ),
  examiner: (
    name: "Examiner name",
    email: none
  ),
  date: "December 22, 2023",
  program: "BSc Computer Science",
  // Is your report a progress report?
  is_progress_report: false,
  // You can remove this arg all together if you need, it will autfill witb default values
  originality_statements: (
    acknowledged: "I have acknowledged all sources, and identified any content taken from elsewhere.",
    resources: "I have not used any resources produced by anyone else.",
    foreign: "I did all the work myself, or with my allocated group, and have not helped anyone else",
    material: "The material in the report is genuine, and I have included all my data/code/designs.",
    reuse: "I have not submitted any part of this work for another assessment.",
    participants: "My work did not involve human participants, their cells or data, or animals."
  ),
  abstract_text: lorem(50),
  acknowledgments_text: lorem(50),
  // These set style for page and heading numberings
  page_numbering: "1",
  title_numbering: "1.",
  doc
)


// Or split individually if you need to tailor the content


#show: doc => page_style(
  doc
)
#cover(
  title: "Folidity - Safe Functional Smart Contract Language",
  supervisor: (name: "Prof. Vladimiro Sassone", email:  "vsassone@soton.ac.uk"),
  examiner: (name: "TBD", email: none),
  author: (name: "German Nikolishin", email: "gn2g21@soton.ac.uk"), 
)
#abstract(
  author: (name: "German Nikolishin", email: "gn2g21@soton.ac.uk"), 
  program: "Program name",
  // this is default value
  is_progress_report: false,
  content: lorem(150),
)

// This is identical
#originality_statement(
  acknowledged: "I have acknowledged all sources, and identified any content taken from elsewhere.",
  resources: "I have not used any resources produced by anyone else.",
  foreign: "I did all the work myself, or with my allocated group, and have not helped anyone else",
  material: "The material in the report is genuine, and I have included all my data/code/designs.",
  reuse: "I have not submitted any part of this work for another assessment.",
  participants: "My work did not involve human participants, their cells or data, or animals."
)
// to this
#originality_statement()

#acknowledgments(text: "I dedicated this to myself")
// autgenerated table of contents
#table_of_contents()

// Start writing stuff

= Proposed Solution

== Outline

#lorem(1500)

= Hey

#lorem(500)

== Subhey

#lorem(500)



// Include bibliography
#pagebreak()
#bibliography("ECS.bib", full: true)