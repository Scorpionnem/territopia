tag @s[tag=unit] add thisunit

execute as @s at @s run tp @n[tag=thisunit] ~ ~ ~ facing entity @n[tag=thistile]
execute as @s at @s run tp @n[tag=playerhead] ~ ~ ~ facing entity @n[tag=thistile]


scoreboard players operation @n[tag=thistile] unit.health -= @n[tag=thisunit] unit.attack
execute as @n[tag=thisunit] at @s positioned ~ ~2.5 ~ run particle sweep_attack
execute as @n[tag=thisunit] at @s run playsound entity.player.attack.sweep ambient @a ~ ~ ~

execute as @n[tag=thistile] if score @s unit.health matches ..0 run function units:general/died

tag @s[tag=unit] remove thisunit