tp @a[tag=currentplayer] 23 12 46
attribute @a[tag=currentplayer,limit=1] minecraft:generic.gravity base set 0.08

tag @a remove currentplayer
tag @s add currentplayer


item replace entity @s enderchest.9 with carrot_on_a_stick[max_stack_size=1,item_name='"Finish Turn"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ғɪɴɪsʜ ʏᴏᴜʀ ᴛᴜʀɴ"}'],custom_model_data=1,custom_data={end_turn:1},attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

item replace entity @s container.6 with carrot_on_a_stick[item_name='"Tech Tree"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ᴏᴘᴇɴ ᴛʜᴇ ᴛᴇᴄʜ ᴛʀᴇᴇ"}'],custom_data={settings:1},custom_model_data=2,attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1
item replace entity @s container.0 with carrot_on_a_stick[item_name='"Settings"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ᴄʜᴀɴɢᴇ sᴇᴛᴛɪɴɢs"}'],custom_data={settings:1},custom_model_data=3,attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1
item replace entity @s container.8 with carrot_on_a_stick[max_stack_size=1,item_name='"Finish Turn"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ғɪɴɪsʜ ʏᴏᴜʀ ᴛᴜʀɴ"}'],custom_model_data=4,custom_data={end_turn:0},attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1
item replace entity @s container.4 with carrot_on_a_stick[item_name='"Upgrade/Build/Summon Troop"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴡʜᴇɴ ʟᴏᴏᴋɪɴɢ ᴀᴛ ᴀ ᴛɪʟᴇ ᴛᴏ ᴜᴘɢʀᴀᴅᴇ/ʙᴜɪʟᴅ/sᴜᴍᴍᴏɴ ᴀ ᴛʀᴏᴏᴘ"}'],custom_data={builder:1},custom_model_data=5] 1
schedule function game:nextplayer/givenext 2s


tellraw @a ["It is ",{"selector":"@s"},"'s turn."]


execute as @e[tag=glowing] on passengers run data merge entity @s {Glowing:0b}
tag @e remove glowing

execute as @e[tag=selected_tile] run function units:general/select/unselect

execute if score value turn matches 0 as @a[tag=currentplayer] run function game:turn/firstturn with storage game
execute if score value turn matches 1.. as @s run function game:nextplayer/location/return with storage game


function game:updatebossbar
function game:nextplayer/bossbar with storage game

attribute @s minecraft:generic.gravity base set 0
fill -9 6 42 54 6 -21 barrier

schedule function game:nextplayer/fog_schedule 3t