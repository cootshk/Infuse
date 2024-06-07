package io.github.cootshk.infusecommands;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.command.v2.CommandRegistrationCallback;
import net.minecraft.entity.player.PlayerEntity;
import net.minecraft.scoreboard.*;
import net.minecraft.server.command.CommandManager;
import net.minecraft.server.command.ServerCommandSource;
import net.minecraft.text.Text;

import java.util.Objects;

import static net.minecraft.server.command.CommandManager.literal;

public class InfuseCommands implements ModInitializer {
    @Override
    public void onInitialize() {
        CommandRegistrationCallback.EVENT.register((dispatcher, registryAccess, environment) -> dispatcher.register(literal("drain")
                .executes(
                        context -> {
                            // This is where you will add your code for when the command is executed
                            System.out.println("Drain command executed!");
                            //final boolean permissions = context.getSource().hasPermissionLevel(2);
                            /*
                            if (!permissions) {
                                context.getSource().sendFeedback(() -> Text.literal("You do not have permission to use this command!"), false);
                                return 0;
                            }
                            */
                            //ServerScoreboard scoreboard = context.getSource().getWorld().getScoreboard();
                            PlayerEntity player = context.getSource().getPlayer();
                            if (player != null) {
                                CommandManager commandManager = Objects.requireNonNull(player.getServer()).getCommandManager();
                                ServerCommandSource commandSource = player.getServer().getCommandSource();
                                System.out.println("Player draining: " + player.getName().getLiteralString());
                                commandManager.executeWithPrefix(commandSource, "/scoreboard players set " + player.getName().getLiteralString() + " DrainPotion 1");
                                return 1;
                            }
                            //scoreboard.addTeam("a")
                            return 0;
                })));
        CommandRegistrationCallback.EVENT.register((dispatcher, registryAccess, environment) -> dispatcher.register(literal("resetinfuse")
                .executes(
                        context -> {
                            // This is where you will add your code for when the command is executed
                            System.out.println("Reset command executed!");
                            final boolean permissions = context.getSource().hasPermissionLevel(2);

                            if (!permissions) {
                                context.getSource().sendFeedback(() -> Text.literal("You do not have permission to use this command!"), false);
                                return 0;
                            }
                            //ServerScoreboard scoreboard = context.getSource().getWorld().getScoreboard();
                            PlayerEntity player = context.getSource().getPlayer();
                            if (player != null) {
                                CommandManager commandManager = Objects.requireNonNull(player.getServer()).getCommandManager();
                                ServerCommandSource commandSource = player.getServer().getCommandSource();
                                commandManager.executeWithPrefix(commandSource, "/scoreboard players set " + player.getName().getLiteralString() + " ResetInfuse 1");
                                return 1;
                            }
                            //scoreboard.addTeam("a")
                            return 0;
                })));
    }
}
