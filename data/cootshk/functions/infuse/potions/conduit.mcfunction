execute if score @s Conduit matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You already have the Conduit's Power effect!","color":"dark_red"}]
execute if entity @s[gamemode=!creative] if score @s Conduit matches 1 run loot give @s loot cootshk:infuse/conduit
execute if entity @s[gamemode=!creative] if score @s Conduit matches 1 run clear @s glass_bottle 1
scoreboard players set @s Conduit 1
advancement revoke @s only cootshk:infuse/potions/conduit