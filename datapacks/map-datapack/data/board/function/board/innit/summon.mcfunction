$execute if score value z matches $(z) run return 0

$execute if score value x matches $(x) run scoreboard players add value z 2
$execute if score value x matches $(x) run scoreboard players set value x 0
scoreboard players add value x 2

$summon interaction ~$(tempx).0 0 ~$(tempz).0 {width:2f,height:1f,Tags:["tile"],response:1b}

execute store result storage minecraft:board tempx int 1 run scoreboard players get value x
execute store result storage minecraft:board tempz int 1 run scoreboard players get value z

function board:board/innit/summon with storage board
