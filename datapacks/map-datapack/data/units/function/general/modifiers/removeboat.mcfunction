execute on passengers as @s[tag=unit] unless score @s unit.boatlevel matches 1.. run return fail

execute if entity @s[tag=ocean] run return 0
execute if entity @s[tag=deep_ocean] run return 0

execute if entity @s[tag=mountains] run scoreboard players set @n[tag=thistile] unit.boatlevel 0
execute if entity @s[tag=plains] run scoreboard players set @n[tag=thistile] unit.boatlevel 0
execute if entity @s[tag=forest] run scoreboard players set @n[tag=thistile] unit.boatlevel 0

execute on passengers as @s[tag=unit] on passengers run kill @s[tag=boat]

execute on passengers as @s[tag=unit] run scoreboard players operation @s unit.movementrange = @s unit.savemovementrange