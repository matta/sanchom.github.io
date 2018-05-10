#lang pollen

◊define-meta[page-title]{Home}

In September, I will be starting a law degree at UBC's Allard School of Law. My interests
in this area are broad, and I expect they may change, but at the outset, I want to focus
on the parts of law that help give the weakest of us a voice, in the justice system and in
society in general. This includes defendant rights, free expression, and in some respects,
copyright. I also want to help with public legal education and access-to-justice initiatives,
to help give more of us more confidence in the outcomes of the justice system and other government
decision-making processes.

I am trained as a computer scientist; in that field, I've focused on visual object recognition,
machine learning, and applications of deep neural networks.

Currently: data scientist at Kobo, volunteer with the ◊a[#:href
"http://bccla.org/"]{BCCLA}, ◊a[#:href
"http://athletics.ca/wp-content/themes/default-bs3/popups/athlete-rankings.php?id=8218097&year=0"]{amateur
sprinter}.

Formerly: Head of R&D for Shelfie, Class 1 Flight Instructor (still
current but not active), Canadian Forces Officer (Cadet Instructor
Cadre), 2× Google Intern.

◊div[#:class "external-link-logos"]{
◊little-logo[#:href "https://sanchom.wordpress.com" #:img "assets/wordpress-logo-notext-rgb.png"]
◊little-logo[#:href "https://twitter.com/sanchom" #:img "assets/tw_ico.png"]
}

◊heading{Selected Publications}

Sancho McCann. "Object classification and localization using spatially
localized features". Ph.D. Dissertation. UBC Department of Computer
Science. 2014.
◊bracketed-link[#:url "https://open.library.ubc.ca/media/download/pdf/24/1.0167312/1"]

Sancho McCann and David G. Lowe. "Spatially Local Coding for Object
Recognition." ◊em{ACCV}, 2012.
◊bracketed-link[#:url "assets/McCannLowe_ACCV2012_0851.pdf"] ◊bracketed-link[#:word
"poster" #:url "assets/McCannLowe_ACCV2012_0851_poster.pdf"] ◊bracketed-link[#:word
"project page" #:url "http://www.cs.ubc.ca/projects/spatially-local-coding"]

Sancho McCann and David G. Lowe. "Local Naive Bayes Nearest Neighbor
for Image Classification." ◊em{CVPR}, 2012.
◊bracketed-link[#:url "assets/McCannLowe_CVPR2012_1925.pdf"] ◊bracketed-link[#:word "project
page" #:url "http://www.cs.ubc.ca/projects/local-nbnn"]

A more complete list is at my ◊a[#:href
"https://scholar.google.com/citations?user=6C-udIUAAAAJ"]{Google
Scholar profile}.

◊heading{Selected Projects}

◊sub-heading{AtmosView: Visualization Redesign}

◊thumbnail[#:big "assets/Screen-shot-2011-08-07-at-9.22.51-AM.png"]
◊margin-note{Sancho McCann. "Atmospheric Sounding Visualization."
◊bracketed-link[#:word "project report" #:url
"assets/McCann-AtmosView.pdf"]} I created AtmosView, a new
visualization of atmospheric sounding data (vertical profiles of the
atmosphere's temperature and humidity). People use this data to
predict soaring conditions, atmospheric stability, and the likelihood
of severe weather. Previous diagrams have been called the most
difficult atmospheric diagrams to read. AtmosView helps people to see
better the information they're interested in and allows for easier
comparisons between multiple charts.

◊sub-heading{Humanoid Robot}

◊thumbnail[#:big "assets/abarenbou.png" #:small
"assets/abarenbou-225x300.png"]{} ◊margin-note{Sancho McCann and Jacky
Baltes. "Abarenbou – A Small Vision-Based Humanoid Robotic Research
platform." In ◊em{Proc. of the Third International Conference on
Computational Intelligence, Robotics, and Autonomous Systems (CIRAS)},
2005. ◊bracketed-link[#:url "assets/McCannBaltes-Abarenbou.pdf"]} I
worked with ◊a[#:href "http://www.cs.umanitoba.ca/~jacky/"]{Dr. Jacky
Baltes} to build a small-size humanoid robot. I coded in C and cross
compiled for the ARM processor on a Sonqy Clie. I programmed it to
walk and to find and kick a ball. This was our entry in the 2005 FIRA
RoboWorld Cup.

◊sub-heading{Robot Airplane}

◊thumbnail[#:big "assets/airplane.png"]{} ◊margin-note{Paul Furgale,
Sancho McCann, Jim Majewski, Andrew Bugera, and Kory Zelickson. "Team
Manitoba 2006 AUVSI Student Competition Project Description."
◊em{AUVSI: 4th Annual Student Unmanned Aerial Vehicle Competition},
2006. ◊bracketed-link[#:url "assets/TeamManitoba2006.pdf"]} At the
University of Manitoba, I was part of a team that built a robot
airplane that could take-off, fly a search pattern, and land---all
autonomously. The airplane sent a video feed and telemetry to a ground
station, where one of our teammates could mark targets of interest and
report their coordinates. We placed first out of seventeen teams in a
competition that included BYU, University of Texas, Cornell, MIT, and
UCSD. I wrote much of the computer vision code, which transformed the
video feed's pixel coordinates into GPS coordinates, and presented
that information to our ground station's operator.
