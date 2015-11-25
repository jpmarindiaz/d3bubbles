

library(devtools)
load_all()
document()
install()

library(d3bubbles)


# BUBBLES
d <- read.csv("inst/data/soccer-teams-valuation.csv")
d3bubbles(d, labelCol = "Equipo",valueCol = "Valorización")
d3bubbles(d, valueCol = "Valorización", labelCol = "Equipo", 
          colorCol = "País", tooltipCol = "País",
          opts = list(padding = 1, palette = "Pastel1", textSplitWidth = 50, textColor="#FF4343"))

d3bubbles(d, valueCol = "Valorización", labelCol = "Equipo",
          opts = list(padding = 50))

