execute if score x board_size matches 0 \
	run return 0

summon interaction ~ 0 ~ {width:2f,height:1.2f,Tags:["board", "tile"],response:1b}

scoreboard players remove z board_size 1

execute if score z board_size matches 0 run \
	return run function src:board/generation/interactions/loop with storage board_generation

execute positioned ~ ~ ~2.0 \
	run function src:board/generation/interactions/summon
