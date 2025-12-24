execute unless entity @e[tag=!final_decorated,tag=tile] run return run function src:board/generation/terrain/loop_end

execute as @e[tag=tile,tag=!final_decorated,limit=256] at @s run \
	function src:board/generation/terrain/blend/continental/blend
