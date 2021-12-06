name_ironman(ironman).
name_ironman(tony_stark).
name_ironman(tony).
name_ironman(mandarin).
name_ironman(obadiah_stane).
name_ironman(obadiah).
name_ironman(iron_monger).
name_ironman(ivan_vanko).
name_ironman(ivan).
name_ironman(whiplash).
name_ironman(pepper_potts).
name_ironman(pepper).

obj_ironman(ark_reactor).
obj_ironman(suit).
obj_ironman(extremis).

t_action_ironman(kills).
t_action_ironman(gets).

tpp_action_ironman(killed).
tpp_action_ironman(got).

i_action_ironman(dies).

adjective_ironman(new).
adjective_ironman(dead).

% about ironman 1
match_ironman_tv(ironman,kills,obadiah_stane).
match_ironman_tv(ironman,kills,obadiah).
match_ironman_tv(ironman,kills,iron_monger).
match_ironman_tv(tony_stark,kills,obadiah_stane).
match_ironman_tv(tony_stark,kills,obadiah).
match_ironman_tv(tony_stark,kills,iron_monger).
match_ironman_tv(tony,kills,obadiah_stane).
match_ironman_tv(tony,kills,obadiah).
match_ironman_tv(tony,kills,iron_monger).

match_ironman_tvpp(obadiah_stane,killed,ironman).
match_ironman_tvpp(obadiah,killed,ironman).
match_ironman_tvpp(iron_monger,killed,ironman).
match_ironman_tvpp(obadiah_stane,killed,tony_stark).
match_ironman_tvpp(obadiah,killed,tony_stark).
match_ironman_tvpp(iron_monger,killed,tony_stark).
match_ironman_tvpp(obadiah_stane,killed,tony).
match_ironman_tvpp(obadiah,killed,tony).
match_ironman_tvpp(iron_monger,killed,tony).

match_ironman_tvpp(obadiah_stane,killed).
match_ironman_tvpp(obadiah,killed).
match_ironman_tvpp(iron_monger,killed).

match_ironman_iv(obadiah_stane,dies).
match_ironman_iv(obadiah,dies).
match_ironman_iv(iron_monger,dies).

match_ironman_adj(obadiah_stane,dead).
match_ironman_adj(obadiah,dead).
match_ironman_adj(iron_monger,dead).


% about ironman 2
match_ironman_tv(ironman,kills,ivan_vanko).
match_ironman_tv(ironman,kills,ivan).
match_ironman_tv(ironman,kills,whiplash).
match_ironman_tv(tony_stark,kills,ivan_vanko).
match_ironman_tv(tony_stark,kills,ivan).
match_ironman_tv(tony_stark,kills,whiplash).
match_ironman_tv(tony,kills,ivan_vanko).
match_ironman_tv(tony,kills,ivan).
match_ironman_tv(tony,kills,whiplash).

match_ironman_tvpp(ivan_vanko,killed,ironman).
match_ironman_tvpp(ivan,killed,ironman).
match_ironman_tvpp(whiplash,killed,ironman).
match_ironman_tvpp(ivan_vanko,killed,tony_stark).
match_ironman_tvpp(ivan,killed,tony_stark).
match_ironman_tvpp(whiplash,killed,tony_stark).
match_ironman_tvpp(ivan_vanko,killed,tony).
match_ironman_tvpp(ivan,killed,tony).
match_ironman_tvpp(whiplash,killed,tony).

match_ironman_tvpp(ivan_vanko,killed).
match_ironman_tvpp(ivan,killed).
match_ironman_tvpp(whiplash,killed).

match_ironman_iv(ivan_vanko,dies).
match_ironman_iv(ivan,dies).
match_ironman_iv(whiplash,dies).

match_ironman_adj(ivan_vanko,dead).
match_ironman_adj(ivan,dead).
match_ironman_adj(whiplash,dead).


% about ironman 3
match_ironman_tv(pepper_potts,gets,extremis).
match_ironman_tv(pepper,gets,extremis).
match_ironman_tv(pepper_potts,kills,mandarin).
match_ironman_tv(pepper,kills,mandarin).

match_ironman_tvpp(mandarin,killed,pepper_potts).
match_ironman_tvpp(mandarin,killed,pepper).

match_ironman_tvpp(mandarin,killed).
match_ironman_tvpp(mandarin,killed).

match_ironman_iv(mandarin,dies).
match_ironman_adj(mandarin,dead).








