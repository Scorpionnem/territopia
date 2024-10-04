$summon text_display ~ ~$(offset) ~ {text:'"$(xp)p"',Tags:["xp","new"],teleport_duration:1,billboard:"center",shadow:1b,background:0}
scoreboard players set @n[tag=xp,tag=new] xp.timer 20
tag @n[tag=xp,tag=new] remove new