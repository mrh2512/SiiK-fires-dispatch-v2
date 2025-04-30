# SiiK Fire Dispatch 🚒📟
# V2.0

A modern and sleek fire department pager system for QB-Core servers, fully integrated with FireScript.

---

## 📦 Features

- 🔥 Dispatch pager activates when a fire is started (FireScript integration).
- 🔊 Sound notification when a dispatch comes in.
- 🧑‍🚒 `/pageron` and `/pageroff` commands to toggle on/off-duty status.
- 📟 Modern, clean pager UI (top-left of the screen).
- 🏃 Player can move freely while the pager UI is open.
- 🎯 Press **E** to ACCEPT a fire call (automatically sets a GPS waypoint).
- ❌ Press **R** to DECLINE a call.
- 🗺️ Accepting a call creates a waypoint directly to the fire location.
- 💬 Configurable notifications and settings inside `config.lua`.

---

## 📂 Installation

1. **Download and Extract**  
   Place the `SiiK-fire-dispatch` folder into your `resources/[local]` or similar directory.

2. **Add to server.cfg**  
   Add the following line to your `server.cfg`:


3. **Dependencies**  
- [qb-core](https://github.com/qbcore-framework/qb-core)
- FireScript (for the fire starting events)

4. **Configuration**  
Open `config.lua` to adjust settings like:
- Allowed Jobs
- Blip settings
- Notification toggles
- Station siren locations

-- Siren locations if you choose to only use 1 or 2 stations just line out what your not using i recommend -- from the top like this
Config.SirenLocations = {
--    { x = 215.76, y = -1642.3, z = 29.7 }, --Davis
--    { x = -372.04, y = 6118.97, z = 31.44 }, --Paleto
--    { x = -629.89, y = -95.24, z = 38.06 }, --Rockford
    { x = 1692.65, y = 3583.05, z = 35.62 }, --Sandy
    { x = 1193.9, y = -1468.52, z = 34.86 } --Capital Blvd
}

---

## 🛠 Usage

- Use `/pageron` to go on-duty as a firefighter.
- Use `/pageroff` to go off-duty.
- When a fire is started (through FireScript), an alert will be sent to all on-duty firefighters.
- When the pager pops up:
- Press **E** to accept and set a GPS route to the fire.
- Press **R** to decline.

---

## ⚙️ File Structure

- `client.lua` — handles pager UI, accepting/declining calls, movement settings.
- `server.lua` — manages dispatch events and communication from FireScript.
- `config.lua` — general settings and configuration.
- `fxmanifest.lua` — resource manifest file.
- `html/` — pager UI (index.html, style.css, script.js).

---

## 📋 Notes

- Players can move, fight fires, and interact even while pager UI is open.
- UI is intentionally minimal, modern, and styled for clean emergency RP.
- Auto-waypoint setting ensures fast response times.

---

## ✨ Credits

- Developed by **SiiK**.
- Inspired by realistic Fire Department dispatch systems with station call alarm.
