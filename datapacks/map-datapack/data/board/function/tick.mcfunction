execute as @e[tag=glowing] on passengers run data merge entity @s {Glowing:0b}
tag @e remove glowing
execute as @a[tag=currentplayer] at @s anchored eyes run function raycast:start_ray




execute as @e[tag=unit.moove] on passengers run data merge entity @s {Glowing:1b}

execute at @e[tag=unit.moove] run particle crit ~ ~2 ~