execute if score @s Conduit matches 0 run tellraw @s [{"text": "[", "color": "gold"}, {"text": "Infuse", "color": "dark_aqua"}, {"text": "] ", "color": "gold"}, {"text": "You must have the Conduit's Power effect to drain it!", "color": "dark_red"}]
execute if score @s Conduit matches 0 run return 1
tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have drained the Conduit's Power effect!","color":"yellow"}]
scoreboard players set @s Conduit 0
loot give @s loot cootshk:infuse/conduit
#give @s potion{CustomModelData: 1, display: {Name: '{"text": "Conduit","bold": true,"color": "gold", "italic": false}', Lore: ['[{"text": "Potion drained by: "}, {"selector": "@s", "color": "aqua"}]']}} 1