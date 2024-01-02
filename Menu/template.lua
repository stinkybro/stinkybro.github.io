--[[

This is the "Veixus Mod Menu Template". This template is for making your own executable LUA script mod menu as a sub-menu (Recommended for using Kiddion's mod menu for loading).
This template should be and is mapped and layed out for easy modifying/creating
For more help/info about the usage or documentation, visit: 

Last Updated: 1/2/2024

Menu Status: Up to date
    
    Notice:
     * If menu status is set "Outdated", it is still useable, yet less safe and not recommended for use until updated, unless ignored
     * If menu status is set "Up to date", it is the latest version which should be the more safest compared to older versions


Menu Safety: Undetected

    "Undetected" means that the menu is most likely undetected by anti-cheat or such and is a lot safer to use
    "Detected" means the menu is more likely of being detected for most mods being used inside of it. It is recommended to not use until fixed/updated


Help:
    -------------------------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------------------------
    -------------------------------------------------------------------------------------------------------------------------------------
    How to use:
        Keybinds are always changeable and are used with arrows as of now

    

]]
-- This is the core of the menu handling functions, calls, etc. Please do not touch it unless editing with the guide/documentation
local CORE = 
{
    MENU_VERSION = "1.0.0"; -- Set this to your desired, example: "ver 1.0" or "Version 69420 funny" it can any way of string
    AUTHOR = "Author"; -- Set this to your name or whatever you want
    DESCRIPTION = "Description for my mod menu."; -- <--Feel free to type in anything in here

    CUSTOM_AUTH_KEY = "K8sWfP6hZ2rTlG3aQ9yB1oUv"; -- Coming soon leave as is for now

    DEBUG = 
    {
        DEBUG_OR_TEST_MODE = false;
        FUNCTIONS = 
        {
            LOG_START_RECORD = function (sa, cw ,vow, fal, ia) -- Deprecated | May remove soon
                
            end;
            
            DEBUG_LOG = function (str_text, _time, _VA_) -- Used for debug logging which prints out onto the debug console.
                print(str_text)
            end;
        }
    };

    MAIN = 
    {
        FUNCTIONS = 
        {
            Quit = function() -- Completely closes/deletes the menu and other variables & functions made by the menu
                menu.clear()
            end;

            Restart = function () -- Reloads the menu
                
            end;

            Prefix = function (str_mode, object_any, ignoreVersion) -- Main entrance for the menu
                
            end;

            GetVersion = function ()
                return menu.get_game_version()
            end
        }
    };
}
local GAME_BUILD_VERSION;

-- Call by argument order: 
    -- str_mode; default is "Normal" otherwise set to "Register" for debug
    -- leave object_any as nil which is default
    -- set ignoreVersion to true if you want the menu to ignore that it is outdated depending on GTA version. Otherwise set false which is default
CORE.MAIN.FUNCTIONS.Prefix("Normal", nil, false)
