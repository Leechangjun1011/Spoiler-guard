name_avengers(ironman).
name_avengers(tony_stark).
name_avengers(thanos).
name_avengers(loki).
name_avengers(thor).
name_avengers(natasha).
name_avengers(black_widow).
name_avengers(vision).
name_avengers(hawk_eye).
name_avengers(hulk).
name_avengers(doctor_strange).

obj_avengers(gauntlet).
obj_avengers(stormbreaker).
obj_avengers(infinity_stones).
obj_avengers(fingersnap).

i_action_avengers(dies).

t_action_avengers(gets).
t_action_avengers(makes).
t_action_avengers(does).
t_action_avengers(kills).

tpp_action_avengers(made).
tpp_action_avengers(done).
tpp_action_avengers(killed).

adjective_avengers(dead).
adjective_avengers(all).

match_avengers_tv(thanos,makes,fingersnap).
match_avengers_tv(ironman,makes,fingersnap).
match_avengers_tv(thanos,does,fingersnap).
match_avengers_tv(ironman,does,fingersnap).
match_avengers_tv(thanos,kills,loki).
match_avengers_tv(thor,kills,thanos).
match_avengers_tv(thanos,gets,infinity_stones).

match_avengers_tvpp(fingersnap,made,thanos).
match_avengers_tvpp(fingersnap,made,ironman).
match_avengers_tvpp(fingersnap,done,thanos).
match_avengers_tvpp(fingersnap,done,ironman).
match_avengers_tvpp(loki,killed,thanos).
match_avengers_tvpp(thanos,killed,thor).

match_avengers_tvpp(loki,killed).
match_avengers_tvpp(thanos,killed).

match_avengers_iv(ironman,dies).
match_avengers_iv(loki,dies).
match_avengers_iv(thanos,dies).

match_avengers_adj(ironman,dead).
match_avengers_adj(loki,dead).
match_avengers_adj(thanos,dead).
