execute if score @s Hero matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You already have the Hero of the Village effect!","color":"dark_red"}]
execute if entity @s[gamemode=!creative] if score @s Hero matches 1 run loot give @s loot cootshk:infuse/hero
execute if entity @s[gamemode=!creative] if score @s Hero matches 1 run clear @s glass_bottle 1
scoreboard players set @s Hero 1
advancement revoke @s only cootshk:infuse/potions/hero