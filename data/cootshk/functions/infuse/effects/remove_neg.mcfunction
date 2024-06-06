execute store result score @s HasPotion run function cootshk:infuse/effects/has_effect_neg

# If effect is already applied, reroll
execute if score @s HasPotion matches 0 run scoreboard players add @s CurrentPotion 1
execute if score @s HasPotion matches 0 if score @s CurrentPotion matches 8 run scoreboard players set @s CurrentPotion 1
execute if score @s HasPotion matches 0 run function cootshk:infuse/effects/remove_neg

execute if score @s CurrentPotion matches 1 run scoreboard players set @s Slowness 0
execute if score @s CurrentPotion matches 2 run scoreboard players set @s Falling 0
execute if score @s CurrentPotion matches 3 run scoreboard players set @s Jump 0
execute if score @s CurrentPotion matches 4 run scoreboard players set @s Mining 0
execute if score @s CurrentPotion matches 5 run scoreboard players set @s Hunger 0
execute if score @s CurrentPotion matches 6 run scoreboard players set @s Darkness 0
execute if score @s CurrentPotion matches 7 run scoreboard players set @s Weakness 0