library(tidyverse)
lirios <- iris[c(1:5,51:55,101:105),]
lirios

filter(lirios, Species=='setosa')

filter(lirios, Species=='setosa' | Species=='virginica')

filter(lirios, Species=='setosa', Sepal.Length < 5)

select(lirios, Sepal.Length, Sepal.Width)

select(lirios, -Species)

select(lirios, contains('Petal'))

arrange(lirios, Sepal.Length)

lirios %>%
  select(contains('Petal'))  %>%
  filter(Petal.Length > 4)   %>%
  arrange(Petal.Length)

lirios %>%
  mutate(forma = Petal.Width/Petal.Length)

