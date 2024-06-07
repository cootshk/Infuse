advancement revoke @s only cootshk:infuse/potions/speed
execute if score @s PotionCount matches ..-1 run scoreboard players add @s OnKill 1
execute if score @s PotionCount matches ..-1 run return 1
execute if score @s Speed matches 1 run tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You already have the Speed effect!","color":"dark_red"}]
execute if score @s Speed matches 1 run loot give @s loot cootshk:infuse/speed
execute if score @s Speed matches 1 run clear @s glass_bottle 1
execute if score @s Speed matches 1 run return 1
scoreboard players set @s Speed 1
tellraw @s [{"text":"[","color":"gold"},{"text":"Infuse","color":"dark_aqua"},{"text":"] ","color":"gold"},{"text":"You have drank the Speed effect!","color":"yellow"}]