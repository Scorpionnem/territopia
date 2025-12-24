kill @e[tag=board]

tellraw @a {"color":"gray","text":"starting generation"}

$data modify storage board_generation size set value $(size)ui
$data modify storage board_generation blend_style set value $(blend_style)

$scoreboard players set x board_size $(size)
$scoreboard players set z board_size $(size)

execute positioned 0 0 0 run \
	function src:board/generation/interactions/summon

function src:board/generation/terrain/loop_start
