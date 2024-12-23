# kBlipInfo

kBlipInfo is a FiveM script that allows you to create and manage detailed blip information on the map. This script provides a way to display custom information for blips, including titles, icons, descriptions, and reward texts.

## Features

- Create custom blip information with titles, icons, and descriptions.
- Display reward texts such as cash, RP, and action points.
- Support for various component types including basic, icon, social, divider, and description.

## Installation

1. Download the script and place it in your `resources` folder.
2. Add the following line to your `server.cfg`:

    ```plaintext
    ensure kBlipInfo
    ```

## Usage

### Creating Blip Information

To create and update blip information, use the `UpdateBlipInfo` export. Below is an example of how to create a blip and set its information:

```lua
local blip = AddBlipForCoord(-123.6383, 562.4001, 196.0399)
SetBlipSprite(blip, 545) 
SetBlipDisplay(blip, 4)
SetBlipScale(blip, 0.9)
SetBlipColour(blip, 47)   
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString("Mountain Drift Circuit") 
EndTextCommandSetBlipName(blip)

local info = {
    setTitle = "Mountain Drift Circuit",
    setType = 3,
    setTexture = { dict = "pause_map", name = "pm_series_drift" },
    setCashText = "$25,000",
    setApText = "2500",
    setRpText = "5000",
    components = {
        { type = "icon", title = "Track Type", value = "Drift Course", iconIndex = 2, iconHudColor = 1, isTicked = false },
        { type = "basic", title = "Personal Best", value = "85,432 points" },
        { type = "social", title = "Creator", value = GetPlayerName(PlayerId()), isSocialClubName = true },
        { type = "divider" },
        { type = "description", value = "A challenging mountain course featuring tight hairpins and technical sections." },
        { type = "basic", title = "Track Length", value = "2.3 miles" },
        { type = "basic", title = "Elevation Change", value = "850 ft" }
    }
}

exports['kBlipInfo']:UpdateBlipInfo(blip, info)
```

### Removing Blip Information

To remove blip information, use the `RemoveBlipInfo` export:

```lua
exports['kBlipInfo']:RemoveBlipInfo(blip)
```

### Configuration

The script does not require any additional configuration. Simply add your blip information as shown in the example above.

### License

This project is licensed under the MIT License. See the LICENSE.md file for details.