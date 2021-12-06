name_civilwar(ironman).
name_civilwar(captain).
name_civilwar(blackpanther).
name_civilwar(wintersoldier).
name_civilwar(warmachine).
name_civilwar(spiderman).
name_civilwar(vision).

obj_civilwar(arm).
obj_civilwar(father).

t_action_civilwar(kills).
t_action_civilwar(loses).

tpp_action_civilwar(killed).
tpp_action_civilwar(lost).
tpp_action_civilwar(fallen).

i_action_civilwar(dies).
i_action_civilwar(falls).

adjective_civilwar(dead).

match_civilwar_tv(wintersoldier,loses,arm).
match_civilwar_tv(blackpanther,loses,father).

match_civilwar_tvpp(warmachine,fallen,vision).

match_civilwar_tvpp(warmachine,fallen).


match_civilwar_iv(ironman,loses).
match_civilwar_iv(warmachine,falls).
match_civilwar_adj(no,no).
