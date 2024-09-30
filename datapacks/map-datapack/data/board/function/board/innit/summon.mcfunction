
#: loop summon board interaction
execute if score .x board matches 0 run return 0

summon interaction ~ 0 ~ {width:2f,height:1.2f,Tags:["tile"],response:1b}

scoreboard players remove .z board 1

execute if score .z board matches 0 run return run function board:board/innit/loop with storage board

execute positioned ~ ~ ~2.0 run function board:board/innit/summon
