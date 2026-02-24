% Graph Coloring with 3 Colors
% Goal: Color each node so that no two adjacent nodes share the same color

% Define the nodes of the graph
node(a; b; c; d; e; f).

% Define the edges (undirected graph)
edge(a, b).
edge(a, c).
edge(b, c).
edge(b, d).
edge(c, d).
edge(c, e).
edge(d, e).
edge(d, f).
edge(e, f).

% Make edges symmetric (if there's an edge from X to Y, there's one from Y to X)
edge(X, Y) :- edge(Y, X).

% Define available colors
color(red; green; blue).

% Each node must have exactly one color
1 { hasColor(N, C) : color(C) } 1 :- node(N).

% Constraint: Adjacent nodes cannot have the same color
:- edge(X, Y), hasColor(X, C), hasColor(Y, C).

% Display the coloring solution
#show hasColor/2.
