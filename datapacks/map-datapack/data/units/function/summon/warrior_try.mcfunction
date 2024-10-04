execute as @s if score @s village.unitscount = @s village.maxunitscount run return run tellraw @a[tag=currentplayer] "This village is full!"

$execute if score player$(currentplayer) stars matches ..1 run return run tellraw @a[tag=currentplayer] "Not enough stars!"
execute if entity @s[tag=!village.land,tag=!village] run return run tellraw @a[tag=currentplayer] "You cannot build here!"
execute as @s unless score @s village.idplayer = player currentplayer run return run say "This not in your territory!"
$scoreboard players remove player$(currentplayer) stars 2
execute at @s run function units:summon/warrior with storage game