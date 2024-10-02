scoreboard players add value turn 1
execute as @e[tag=unit] run scoreboard players operation @s unit.moovesleft = @s unit.maxmooves
function game:updatebossbar
schedule function game:newturn_process/main 1t
