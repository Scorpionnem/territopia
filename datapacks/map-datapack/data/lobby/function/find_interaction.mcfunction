execute if entity @a[predicate=lobby:looking_at/startbutton] as @n[tag=lobby.button.start,tag=lobby] run function lobby:functions/start

execute if entity @a[predicate=lobby:looking_at/player1] as @n[tag=player1,type=interaction,tag=lobby] run function lobby:functions/player1

execute if entity @a[predicate=lobby:looking_at/player2] as @n[tag=player2,type=interaction,tag=lobby] run function lobby:functions/player2

execute if entity @a[predicate=lobby:looking_at/player3] as @n[tag=player3,type=interaction,tag=lobby] run function lobby:functions/player3

execute if entity @a[predicate=lobby:looking_at/player4] as @n[tag=player4,type=interaction,tag=lobby] run function lobby:functions/player4

execute if entity @a[predicate=lobby:looking_at/sizesetting] as @n[tag=size.setting,type=interaction,tag=lobby] run function lobby:functions/sizesetting

execute if entity @a[predicate=lobby:looking_at/generationsetting] as @n[tag=generation.setting,type=interaction,tag=lobby] run function lobby:functions/generationsetting
