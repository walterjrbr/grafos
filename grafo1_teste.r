library(igraph)


#Testes de GRAFOS

m=read.csv(file = "local do arquivo grafo_teste.csv", header = TRUE, sep = ";")
m=as.matrix(m)
g=graph.adjacency(m, mode="undirected", weighted=TRUE)
plot(g)
tkplot(g)

s.paths <- shortest.paths(g, algorithm = "dijkstra")
g2=graph.adjacency(s.paths, mode="undirected", weighted=TRUE)
plot(g2)






