local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Smiler",

    Model = "https://github.com/Ilikerobloxdoors/Smiler/blob/main/Smiler.rbxm",

    Speed = 750,
    DelayTime = 12,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        10,
    },

    Cycles = {
        Min = 15,
        Max = 30,
        WaitTime = 1.8,
    },

    CamShake = {
        true,
        {5, 30, 0.8, 2},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://12543659156",
            Image2 = "rbxassetid://12543659156",

            Shake = true,

            Sound1 = {
                80686090832850,
                {Volume = 0.5},
            },

            Sound2 = {
                80686090832850,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to Smiler..."
    },
})

-- Debug callbacks
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Smiler has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Smiler has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Smiler has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Smiler has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Smiler entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Smiler")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Smiler.")
end

-- Run Smiler
Creator.runEntity(entity)
