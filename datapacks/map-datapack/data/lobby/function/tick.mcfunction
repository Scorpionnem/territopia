execute as @a if predicate lobby:looking_at/interaction run function lobby:find_interaction

execute unless entity @a[predicate=lobby:looking_at/startbutton] run function lobby:resetfunctions/reset_start

execute unless entity @a[predicate=lobby:looking_at/player1] run function lobby:resetfunctions/reset_player1

execute unless entity @a[predicate=lobby:looking_at/player2] run function lobby:resetfunctions/reset_player2

execute unless entity @a[predicate=lobby:looking_at/player3] run function lobby:resetfunctions/reset_player3

execute unless entity @a[predicate=lobby:looking_at/player4] run function lobby:resetfunctions/reset_player4

execute unless entity @a[predicate=lobby:looking_at/sizesetting] run function lobby:resetfunctions/reset_sizesetting

execute unless entity @a[predicate=lobby:looking_at/generationsetting] run function lobby:resetfunctions/reset_generationsetting

