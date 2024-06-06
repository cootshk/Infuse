##
 # main.mcfunction
 # infuse
 #
 # Created by Cootshk.
##
# RNG 0-7
scoreboard players add RNG InfuseSettings 1
execute if score RNG InfuseSettings matches 8.. run scoreboard players set RNG InfuseSettings 1

function cootshk:infuse/ensure_within_bounds
execute as @a run scoreboard players reset @s CurrentPotion

execute as @a if score @s OnKill matches 1.. run function cootshk:infuse/kill
execute as @a if score @s OnDeath matches 1.. run function cootshk:infuse/death

# Reset
execute as @a if score @s InfuseResetCounter < Total_Reset_Count InfuseSettings run function cootshk:infuse/reset_player

# Grant effects
execute as @a run function cootshk:infuse/give_effects

# Reset command
execute as @a if score @s ResetInfuse matches 1 run function cootshk:infuse/reset_effects
execute as @a run scoreboard players reset @s ResetInfuse
execute as @a[gamemode=creative] run scoreboard players enable @s ResetInfuse

# Drain command
execute as @a if score @s PotionCount matches 1.. run scoreboard players enable @s DrainPotion
execute as @a if score @s DrainPotion matches 1.. run function cootshk:infuse/drain