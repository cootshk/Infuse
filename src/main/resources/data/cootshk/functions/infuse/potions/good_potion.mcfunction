execute if entity @s[gamemode=!creative] if score @s PotionCount matches 7 run loot give @s loot cootshk:infuse/potions/good_potion
execute if entity @s[gamemode=!creative] if score @s PotionCount matches 7 run clear @s glass_bottle 1
execute if score @s PotionCount matches 7 run return 1
scoreboard players add @s OnKill 1