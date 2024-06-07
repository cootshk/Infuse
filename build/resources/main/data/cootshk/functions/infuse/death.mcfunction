execute if score DEBUG InfuseSettings matches 1 run tellraw @s "Ran OnDeath"
advancement grant @s only cootshk:infuse/displayed/death
scoreboard players remove @s OnDeath 1
execute store result score @s CurrentPotion run scoreboard players get RNG InfuseSettings
execute store result score @s CurrentRoll run scoreboard players get @s CurrentPotion
function cootshk:infuse/count_effects
execute if score @s PotionCount matches 1.. run function cootshk:infuse/effects/remove_pos
execute if score @s PotionCount matches ..0 run function cootshk:infuse/effects/add_neg