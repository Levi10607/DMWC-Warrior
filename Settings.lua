local DMW = DMW
DMW.Rotations.WARRIOR = {}
local Warrior = DMW.Rotations.WARRIOR
local UI = DMW.UI

function Warrior.Settings()
    -- DMW.Helpers.Rotation.CastingCheck = false
    if DMW.Player.Talents.SweepingStrikes.Rank > 0 then
        UI.HUD.Options = {
            [1] = {
                Sweeping = {
                    [1] = {Text = "Sweeping Strikes |cFF00FF00On", Tooltip = ""},
                    [2] = {Text = "Sweeping Strikes |cFFFFFF00Off", Tooltip = ""}
                }
            }
        }
    elseif DMW.Player.Talents.DeathWish.Rank > 0 then
        UI.HUD.Options = {
            [1] = {
                DeathWish = {
                    [1] = {Text = "DeathWish |cFF00FF00On", Tooltip = ""},
                    [2] = {Text = "DeathWish |cFFFFFF00Off", Tooltip = ""}
                }
            }
        }
    else
        UI.HUD.Options = {
            [1] = {
                DeathWish = {
                    [1] = {Text = "DeathWish |cFF00FF00On", Tooltip = ""},
                    [2] = {Text = "DeathWish |cFFFFFF00Off", Tooltip = ""}
                }
            }
        }
    end
    UI.HUD.Options[2] = {
        Charge = {
            [1] = {Text = "Charge |cFF00FF00And interCept", Tooltip = ""},
            [2] = {Text = "Only |cFFFFFF00interCept", Tooltip = ""},
            [3] = {Text = "|cFFFFFF0No Moving", Tooltip = ""}
        }
    }
    UI.HUD.Options[3] = {
        Execute = {
            [1] = {Text = "Execute 360++", Tooltip = ""},
            [2] = {Text = "Execute If <= 3 units", Tooltip = ""},
            [3] = {Text = "Execute |cffffffffTarget", Tooltip = ""},
            [4] = {Text = "Execute |cFFFFFF00Disabled", Tooltip = ""}
        }
    }
    -- UI.AddHeader("This Is A Header")
    -- UI.AddDropdown("This Is A Dropdown", nil, {"Yay", "Nay"}, 1)
    -- UI.AddToggle("This Is A Toggle", "This is a tooltip", true)
    -- UI.AddRange("This Is A Range", "One more tooltip", 0, 100, 1, 70)
    UI.AddHeader("Usual Options")
        UI.AddToggle("AutoExecute360", nil, false)
        -- UI.AddRange("Rotation", "4 = furyprot, 3 leveling, 2 - dps , 1 - tanking  ", 1, 4, 1, 1)
        UI.AddToggle("Debug", nil, false)
        UI.AddDropdown("Rotation", nil, {"Tanking","Fury","Fury/Slam","Fury/Prot","Testing"}, "Tanking")
        -- UI.AddRange("Stance", "any, combat, def, bers", 1, 4, 1, 1)
        UI.AddDropdown("First check Stance", "", {"Battle","Defensive","Berserker"}, "Battle")
        UI.AddDropdown("Second check Stance", "", {"Battle","Defensive","Berserker"}, "Berserker")
        UI.AddDropdown("Third check Stance", "", {"Battle","Defensive","Berserker"}, "Defensive")
        UI.AddToggle("Charge", nil, false)
    UI.AddHeader("Auto stuff")
        UI.AddToggle("AutoFaceMelee", nil, false)
        UI.AddToggle("AutoTarget", nil, false)
        UI.AddToggle("AutoTreatTarget", nil, false)
        UI.AddToggle("BattleShout", nil, true)
        UI.AddToggle("Pummel", nil, false)
        UI.AddToggle("Auto Disable SS", nil, false)
    UI.AddHeader("Big Cooldowns")
        UI.AddToggle("Racial", nil, false)
        UI.AddToggle("asd", nil, false)
        UI.AddToggle("assd", nil, false)
        UI.AddToggle("Pumfmel", nil, false)
        UI.AddToggle("Bloodrage", nil, false)
    UI.AddHeader("Dps shit")
        UI.AddToggle("Rend", nil, false)
        UI.AddToggle("MS/BT", nil, true)
        UI.AddToggle("Whirlwind", nil, true)
        UI.AddToggle("SweepingStrikes", nil, false)
        UI.AddToggle("Overpower", nil, true)
    UI.AddHeader("Tank stuff")
        UI.AddToggle("Revenge", nil, false)
        UI.AddRange("SunderArmor ST", "Health limit", 0, 100, 5, 0)
        UI.AddToggle("SunderArmor", "Applies SunderArmor debuff to Targets", false,true)
	UI.AddDropdown("Apply # Stacks of Sunder Armor", "Apply # Stacks of Sunder Armor", {"1","2","3","4","5"}, "3")

        UI.AddToggle("MockingBlow", nil, false)
        UI.AddToggle("Taunt", nil, false)
        UI.AddToggle("Use ShieldBlock", nil, true)
        UI.AddRange("Shieldblock HP", nil, 30, 100, 10, 50)
    UI.AddHeader("Debuffs")
        UI.AddRange("PiercingHowl", "Units count w/o debuff", 0, 10, 1, 0)
        UI.AddRange("ThunderClap", "Units count w/o debuff", 0, 10, 1, 0)
        UI.AddRange("DemoShout", "Units count w/o debuff", 0, 10, 1, 0)
    UI.AddHeader("Experiments")
        UI.AddToggle("abuse", nil, false)
        UI.AddRange("abuse range", "qwe", 0, 3, 0.01, 0.5)
        UI.AddToggle("Stop If Shift", nil, false)
    UI.AddHeader("Misc")
        UI.AddRange("Rage Lost on stance change", "Rage Lost on stance change", 0, 100, 5, 50)
        UI.AddToggle("Rage Dump1", nil, false)
        UI.AddRange("Rage Dump", "Will Dump Rage after ", 0, 100, 5, 50)
        UI.AddToggle("Tagger", nil, false)
        UI.AddToggle("questTagger", nil, false)
        UI.AddToggle("Hamstring Dump", nil, false)
        UI.AddToggle("Slam Dump", nil, false)
        UI.AddToggle("BattleStance NoCombat", nil, false)
        UI.AddRange("Berserker Rage", "How many units", 0, 5, 1, 0)
        UI.AddToggle("Assist Use", nil, false)
end
