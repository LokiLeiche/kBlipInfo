--[[ 
    Blip Info Documentation Example
    All available options and configurations
    
    Blip Types (setType):
    0 = Standard (no icon)
    1 = Rockstar Verified
    2 = Rockstar Created
    
    Component Types:
    "basic"      = Simple title/value pair
    "icon"       = Title/value with icon and optional tick
    "social"     = Social Club specific component
    "divider"    = Horizontal line separator
    "description"= Multi-line text block
    
--]]


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
    setTitle = "Mountain Drift Circuit",  -- Header title
    setType = 3,                         -- Rockstar Verified style


    setTexture = {                       -- Custom image
        dict = "pause_map",        -- Texture dictionary
        name = "pm_series_drift"         -- Texture name
    },
    
    -- Reward Texts (Top right, optional)
    setCashText = "$25,000",             -- Cash reward
    setApText = "2500",                  -- Action points
    setRpText = "5000",                  -- RP reward
    

    -- Description Components
    components = {
           -- Icon Component Example
        {
            type = "icon",              
            title = "Track Type",
            value = "Drift Course",
            iconIndex = 2,            
            iconHudColor = 1,            
            isTicked = false
        },
        
       -- Stat example
        {
            type = "basic",               
            title = "Personal Best",
            value = "85,432 points",         
        },
        
        -- Social Component Example 
        {
            type = "social",
            title = "Creator",
            value = GetPlayerName(PlayerId()), -- can be any name/string
            crewTag = "Kypo",
            isSocialClubName = false -- rockstar icon, crew tag should be false if using.
        }, -- if someone wants to pr crew tags, go for it.
        
        -- Divider Component
        {
            type = "divider"             --Basically just a lin
        },
        
        {
            type = "description",        -- multi-line text
            value = "A challenging mountain course featuring tight hairpins and technical sections."
        },
        
        -- stat with icon
        {
            type = "basic",
            title = "Track Length",
            value = "2.3 miles",
        },
        
        -- state no icon
        {
            type = "basic",
            title = "Elevation Change",
            value = "850 ft",
    
        }
    }
}


exports['kBlipInfo']:UpdateBlipInfo(blip, info)