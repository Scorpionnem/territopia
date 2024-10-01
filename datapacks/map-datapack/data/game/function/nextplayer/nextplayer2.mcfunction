scoreboard players add player currentplayer 1
execute if score player currentplayer matches 5 run scoreboard players set player currentplayer 1
execute store result storage game currentplayer int 1 run scoreboard players get player currentplayer
function game:nextplayer/nextplayer with storage game