scoreboard players set #bool interaction 0
execute on attacker store result score #bool interaction if entity @s[tag=this]



execute if score #bool interaction matches 1 run data remove entity @s attack