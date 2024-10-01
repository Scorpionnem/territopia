tp @a[tag=currentplayer] 23 12 46
tag @a remove currentplayer
tag @s add currentplayer
tp @s 22 1 30
give @s carrot_on_a_stick[item_name='"Finish Turn"',lore=['{"color":"gray","italic":false,"text":"ᴄʟɪᴄᴋ ᴛᴏ ғɪɴɪsʜ ʏᴏᴜʀ ᴛᴜʀɴ"}'],custom_data={end_turn:1}] 1
tellraw @a ["It is ",{"selector":"@s"},"'s turn."]