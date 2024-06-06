execute if score @s Haste matches 0 run tellraw @s [{"text": "[", "color": "gold"}, {"text": "Infuse", "color": "dark_aqua"}, {"text": "] ", "color": "gold"}, {"text": "You must have the Haste effect to drain it!", "color": "dark_red"}]
execute if score @s Haste matches 0 run return 1
scoreboard players set @s Haste 0
loot give @s loot cootshk:infuse/haste
#give @s potion{CustomModelData: 1, display: {Name: '{"text": "Haste","bold": true,"color": "gold", "italic": false}', Lore: ['[{"text": "Potion drained by: "}, {"selector": "@s", "color": "aqua"}]']}} 1