scoreboard players set state game 1
tellraw @a "Start"
scoreboard players set player currentplayer 1
execute store result storage game currentplayer int 1 run scoreboard players get player currentplayer
function game:nextplayer/nextplayer with storage game