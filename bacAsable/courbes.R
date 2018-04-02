setwd("C:/Users/Samuel/Documents/ENSAE - Online/apprentissage_en_ligne")
rm(list = ls())

curve(
  log(x),
  col = "#000080",
  from = 1,
  to = 100,
  ylim = c(0, 10),
  xlab = "T",
  ylab = "Borne",
  main = "Bornes logarithmique et en racine carrée",
  lwd = 2
)
curve(sqrt(x),
      col = "#B22222",
      lwd = 2,
      add = TRUE)
legend(
  "topleft",
  legend = c("Logarithme", "Racine carrée"),
  col = c("#000080", "#B22222"),
  lty = c(1, 1),
  lwd = 2
)