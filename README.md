## Minecraft server based on spigot with some plugins
### Start:

```
docker run --name spigot -p 25565:25565 timeliar/minecraft-spigot
```

### Mount local world

```
docker run --name spigot -p 25565:25565 -v /path/to/world:/spigot/world timeliar/minecraft-spigot
```

### Directory:

```
├── banned-ips.json
├── banned-players.json
├── bukkit.yml
├── commands.yml
├── data-storage
├── eula.txt
├── help.yml
├── ops.json
├── paper.yml
├── paperclip.jar
├── permissions.yml
├── plugins
│   ├── AuthMe.jar
│   ├── CS-CoreLib_v1.5.8.jar
│   ├── ChestCommands.jar
│   ├── ColorMOTD.jar
│   ├── EssentialsX-2.0.1.jar
│   ├── EssentialsXAntiBuild-2.0.1.jar
│   ├── EssentialsXChat-2.0.1.jar
│   ├── EssentialsXProtect-2.0.1.jar
│   ├── EssentialsXSpawn-2.0.1.jar
│   ├── GroupManager.jar
│   ├── HolographicDisplays.jar
│   ├── LaggRemover-0.2.2.jar
│   ├── LockettePro.jar
│   ├── MCPRBPlugin.jar
│   ├── Multiverse-Core.jar
│   ├── NeverLag1.3.0_ANSI.jar
│   ├── NoBuguppercaseLowercase.jar
│   ├── NoCheatPlus.jar
│   ├── PlotSquared-Bukkit.jar
│   ├── ProtocolLib.jar
│   ├── QuickMarket_v1.2.4.jar
│   ├── Residence4.5.7.5.jar
│   ├── Shopkeepers.jar
│   ├── TreeAssist.jar
│   ├── Vault.jar
│   ├── iConomy7.05.jar
│   ├── orebfuscator-4.1.1.jar
│   └── worldedit-bukkit-6.1.3.jar
├── server.properties
├── spigot.yml
├── startup.sh
├── usercache.json
├── wepif.yml
├── whitelist.json
├── world
├── world_nether
└── world_the_end
```
