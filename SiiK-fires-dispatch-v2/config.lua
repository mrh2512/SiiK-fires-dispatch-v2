Config = {}

-- Jobs that can receive pager alerts
Config.AllowedJobs = {
    'firefighter' -- Only firefighters
}

-- Pager UI settings
Config.Pager = {
    OpenKey = 'E',
    CloseOnAccept = true,
    CloseOnDecline = true,
    SoundOnDispatch = true,
    SoundName = "ALARM_HOUSE",
    SoundSet = "HUD_AWARDS"
}

-- Keybinds for pager
Config.PagerKeys = {
    Accept = "KeyE",
    Decline = "KeyR"
}

-- Blip settings for calls
Config.Blip = {
    Sprite = 436,
    Color = 1,
    Scale = 1.0,
    Time = 120,
    ShowRouteOnAccept = true
}

-- General settings
Config.General = {
    EnableLogging = false,
    AcceptNotify = true,
    DeclineNotify = true
}

-- Siren locations (structured for client use)
Config.SirenLocations = {
    { x = 215.76, y = -1642.3, z = 29.7 }, --Davis
    { x = -372.04, y = 6118.97, z = 31.44 }, --Paleto
    { x = -629.89, y = -95.24, z = 38.06 }, --Rockford
    { x = 1692.65, y = 3583.05, z = 35.62 }, --Sandy
    { x = 1193.9, y = -1468.52, z = 34.86 } --Capital Blvd
}

-- Siren sound settings (confirmed working 3D sound)
Config.Siren = {
    SoundName = "Alarm_Clubhouse_Warning",
    SoundRef = "DLC_BIKER_GENERAL",
    Volume = 1.0,
    Proximity = 30.0
}
