from networkx.utils.backends import _dispatch

@_dispatch
def maximum_independent_set(G): ...
@_dispatch
def max_clique(G): ...
@_dispatch
def clique_removal(G): ...
@_dispatch
def large_clique_size(G): ...
