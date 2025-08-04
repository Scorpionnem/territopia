kill @e[tag=board]

say starting generation

$data modify storage board_generation size set value $(size)ui

$scoreboard players set x board_size $(size)
$scoreboard players set z board_size $(size)

execute positioned 0 0 0 run \
	function src:board/generation/interactions/summon

scoreboard players set generating board_generation 1
