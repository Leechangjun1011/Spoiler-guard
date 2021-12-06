:- consult(ironman).
:- consult(avengers).
:- consult(civilwar).

spoiler(S,Movie):-s(Movie,_,S,_).

s(Movie,s(NP,VP)) --> np(NP,Movie), vp(VP,Movie),{match(NP,VP,Movie)}.
s(Movie,s(NP,VP,CONJ,S)) --> np(NP,Movie), vp(VP,Movie), conj(CONJ), s(Movie,S), {match(NP,VP,Movie)}.
s(Movie,s(NP1,VP,PREP,NP2)) --> np(NP1,Movie), vp(VP,Movie), prep(PREP), np(NP2,Movie), {match(NP1,VP,NP2,Movie)}.


np(np(Det,N),Movie) --> det(Det), n(N,Movie).
np(np(N),Movie) --> n(N,Movie).
np(np(ADJ,N),Movie) --> adj(ADJ,Movie), n(N,Movie).

vp(vp(TV,NP),Movie) --> tv(TV,Movie), np(NP,Movie).
vp(vp(IV),Movie) --> iv(IV,Movie).
vp(vp(BE,ADJ),Movie) --> be(BE), adj(ADJ,Movie).
vp(vp(BE,TVP),Movie) --> be(BE), tvpp(TVP,Movie).

det(det(the)) --> [the].
det(det(a)) --> [a].
det(det(an)) --> [an].

conj(conj(and)) --> [and].

prep(prep(with)) --> [with].
prep(prep(by)) --> [by].

be(be(is)) --> [is].
be(be(are)) --> [are].

% nouns, verbs, adjectives are movie specific.
n(n(NAME),ironman) --> [NAME],{name_ironman(NAME)}.
n(n(OBJ),ironman) --> [OBJ],{obj_ironman(OBJ)}.
n(n(NAME),civilwar) --> [NAME],{name_civilwar(NAME)}.
n(n(OBJ),civilwar) --> [OBJ],{obj_civilwar(OBJ)}.
n(n(NAME),avengers) --> [NAME],{name_avengers(NAME)}.
n(n(OBJ),avengers) --> [OBJ],{obj_avengers(OBJ)}.

tv(tv(Action),ironman) --> [Action],{t_action_ironman(Action)}.
tv(tv(Action),civilwar) --> [Action],{t_action_civilwar(Action)}.
tv(tv(Action),avengers) --> [Action],{t_action_avengers(Action)}.

iv(iv(Action),ironman) --> [Action],{i_action_ironman(Action)}.
iv(iv(Action),civilwar) --> [Action],{i_action_civilwar(Action)}.
iv(iv(Action),avengers) --> [Action],{i_action_avengers(Action)}.

adj(adj(Adj),ironman) --> [Adj],{adjective_ironman(Adj)}.
adj(adj(Adj),civilwar) --> [Adj],{adjective_civilwar(Adj)}.
adj(adj(Adj),avengers) --> [Adj],{adjective_avengers(Adj)}.

% tv_past_participle
tvpp(tvpp(Action),ironman) --> [Action],{tpp_action_ironman(Action)}.
tvpp(tvpp(Action),civilwar) --> [Action],{tpp_action_civilwar(Action)}.
tvpp(tvpp(Action),avengers) --> [Action],{tpp_action_avengers(Action)}.


% extract rules
extract_name(np(det(_), n(Name)),Name).
extract_name(np(n(Name)), Name).
extract_name(np(adj(_), n(Name)),Name).

extract_verb(tv(V), V).
extract_verb(iv(V), V).
extract_verb(be(V), V).
extract_verb(tvpp(V), V).

extract_adj(adj(Adj), Adj).

% match rules checks that whether the given fact is true
% or not in each movie.
match(NP1,vp(TV,NP2),ironman):-
    extract_name(NP1,Name1),
    extract_name(NP2,Name2),
    extract_verb(TV,Verb),
    match_ironman_tv(Name1,Verb,Name2).
match(NP1,vp(_,TVP),ironman):-
    extract_name(NP1,Name1),
    extract_verb(TVP,Verb),
    match_ironman_tvpp(Name1,Verb).
match(NP1,vp(_,TVP),NP2,ironman):-
    extract_name(NP1,Name1),
    extract_name(NP2,Name2),
    extract_verb(TVP,Verb),
    match_ironman_tvpp(Name1,Verb,Name2).
match(NP,vp(IV),ironman):-
    extract_name(NP,Name),
    extract_verb(IV,Verb),
    match_ironman_iv(Name,Verb).
match(NP,vp(_,ADJP),ironman):-
    extract_name(NP,Name),
    extract_adj(ADJP,Adj),
    match_ironman_adj(Name,Adj).

match(NP1,vp(TV,NP2),civilwar):-
    extract_name(NP1,Name1),
    extract_name(NP2,Name2),
    extract_verb(TV,Verb),
    match_civilwar_tv(Name1,Verb,Name2).
match(NP1,vp(_,TVP),civilwar):-
    extract_name(NP1,Name1),
    extract_verb(TVP,Verb),
    match_civilwar_tvpp(Name1,Verb).
match(NP1,vp(_,TVP),NP2,civilwar):-
    extract_name(NP1,Name1),
    extract_name(NP2,Name2),
    extract_verb(TVP,Verb),
    match_civilwar_tvpp(Name1,Verb,Name2).
match(NP,vp(IV),civilwar):-
    extract_name(NP,Name),
    extract_verb(IV,Verb),
    match_civilwar_iv(Name,Verb).
match(NP,vp(_,ADJP),civilwar):-
    extract_name(NP,Name),
    extract_adj(ADJP,Adj),
    match_civilwar_adj(Name,Adj).

match(NP1,vp(TV,NP2),avengers):-
    extract_name(NP1,Name1),
    extract_name(NP2,Name2),
    extract_verb(TV,Verb),
    match_avengers_tv(Name1,Verb,Name2).
match(NP1,vp(_,TVP),avengers):-
    extract_name(NP1,Name1),
    extract_verb(TVP,Verb),
    match_avengers_tvpp(Name1,Verb).
match(NP1,vp(_,TVP),NP2,avengers):-
    extract_name(NP1,Name1),
    extract_name(NP2,Name2),
    extract_verb(TVP,Verb),
    match_avengers_tvpp(Name1,Verb,Name2).
match(NP,vp(IV),avengers):-
    extract_name(NP,Name),
    extract_verb(IV,Verb),
    match_avengers_iv(Name,Verb).
match(NP,vp(_,ADJP),avengers):-
    extract_name(NP,Name),
    extract_adj(ADJP,Adj),
    match_avengers_adj(Name,Adj).













