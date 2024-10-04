execute at @s run function game:nextplayer/location/save with storage game
clear @s
item replace entity @n[tag=currentplayer] container.0 with carrot_on_a_stick[item_name='"Leave"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ʟᴇᴀᴠᴇ ᴛᴇᴄʜ ᴛʀᴇᴇ"}'],custom_data={leave_tech_tree:1},custom_model_data=6,attribute_modifiers={modifiers:[{id:"entity_interaction_range",type:"minecraft:player.entity_interaction_range",amount:-64,operation:"add_value",slot:"mainhand"}],show_in_tooltip:false}] 1

tp @s -2000 3 -2000 0 0

execute as @a[tag=currentplayer] run loot replace entity @e[tag=tech_tree.head] container.0 loot lobby:player_head