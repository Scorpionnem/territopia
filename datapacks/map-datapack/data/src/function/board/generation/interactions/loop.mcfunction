scoreboard players remove x board_size 1
$scoreboard players set z board_size $(size)
$execute positioned ~2.0 ~ ~-$(size) positioned ~ ~ ~-$(size) positioned ~ ~ ~2.0 run function src:board/generation/interactions/summon
