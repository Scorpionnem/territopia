$execute if score player$(currentplayer) stars matches ..9 run return run tellraw @a[tag=currentplayer] "Not enough stars!"
execute if entity @s[tag=!village.land] run return run tellraw @a[tag=currentplayer] "You cannot build here!"
execute as @s unless score @s village.idplayer = player currentplayer run return run say "This not in your territory!"
$scoreboard players remove player$(currentplayer) stars 10
function structures:build/port/port