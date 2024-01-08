# 1.5.0
+ Added support for InputUtils, as a soft dependency. If this mod is enabled, you will be able to access any relevant hotkeys within the game's keybind menu.
# 1.4.8
+ Fixed issue with custom keybinds for the default emotes not working.
# 1.4.7
+ Improved stability and fixed some potential issues of desync.
# 1.4.6
+ Accidentally broke numerical hotkeys for swapping hotbar slots. Fixed now.
# 1.4.5
+ Reverting quick item drop again until I can fix the de-sync issues it's causing.
# 1.4.3
+ Picking up two handed items will now unfade your inventory hud.
+ Added configs to disable the faster item swapping, faster item dropping, and faster item activating. The intervals between these actions will be set to vanilla.
# 1.4.2
+ Fixed issue with non-host clients using their set amount of hotbar slots in the config when host does not have the mod.
# 1.4.1
+ Forgot to update the README.
# 1.4.0
+ Re-added quick item drop (chain dropping)
+ Added option to override the alpha for inventory hud fade. Can be set to 0 to fade all the way, or 1 to never fade. Vanilla is 0.13
+ Added the option to override the hotbar slot spacing to make the icons further apart, or closer together. Vanilla value is 10.
+ Added the option to override the hotbar slots size/scale. This option will automatically adjust the vertical position and spacing.
# 1.3.5
+ Re-added the reversing hotbar swapping in the config since the new vanilla setting for this also reverses the terminal scrolling.
# 1.3.4
+ Adjusted config to allow not using this mod's rebinds for the default emotes.
# 1.3.3
+ Various fixes.
+ Removed setting for reversing hotbar swapping since it's in the game now.
# 1.3.2
+ Fixed bug with "fixed" emote rebinds not working.
# 1.3.1
+ Updated to support new game update
# 1.3.0
+ Forgot to update the dll.
# 1.2.9
+ Fixed the issue preventing players from using their hotkeys to swap hotbar slots, or emoting with the rebound keys.
# 1.2.8
+ Fixed an issue where the mod would complain about reloading the config before it was created.
# 1.2.7
+ Disabling item quick drop until I fix the desync issues.
# 1.2.6
+ Old configs shouldn't persist anymore.
+ Selecting a lower amount of hotbar slots than the default 4, in the config, should now work without issues.
+ You shouldn't be able to use the numerical hotkeys to swap hotbar slots while carrying a two-handed object.
# 1.2.5
+ All clients will now sync the number of hotbar slots with the host.<br>
If the host has the number of hotbar slots set to 4 in their config, then other clients with the mod will also have 4 hotbar slots, regardless of their config settings.
# 1.2.4
+ Fix some sync issues.
+ Fixed a bug that caused pressing escape to tab in the terminal to open the menu.
# 1.2.3
+ The sync was previously only syncing to the host. It should sync between everyone properly now.
# 1.2.2
+ Synced hotbar swap slots with all clients. This will work with any hotbar size.
# 1.2.1
+ Minor fixes
# 1.2.0
+ First attempt at chain dropping items. Will tweak animation a bit to look smoother soon.
# 1.1.2
+ Emotes weren't rebinding correctly. Should be good now.
# 1.1.1
+ Fixed BepInEx dependency
# 1.1.0
+ Initial release