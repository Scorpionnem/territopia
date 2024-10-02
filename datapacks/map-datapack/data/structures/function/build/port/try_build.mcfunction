$execute if score player$(currentplayer) stars matches ..9 run return run tellraw @a[tag=currentplayer] "Not enough stars!"
$scoreboard players remove player$(currentplayer) stars 10
function structures:build/port/port