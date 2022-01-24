ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

----------------------------------- Création du menu ----------------------------

RMenu.Add('touches', 'main', RageUI.CreateMenu("~y~RdkTouches", "~y~RdkTouche DU SERVEUR"))

Citizen.CreateThread(function()
    while true do 
        RageUI.IsVisible(RMenu:Get('touches', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~W"}, true, function(Hovered, Active, Selected) -- C Pour montrez vos touche ig ;)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~C"}, true, function(Hovered, Active, Selected) -- Ta juste a modifier c tres simple ;)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~E"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~P"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~M"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~I"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~U"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~L"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", "Rdk Description", {RightLabel = "~b~G"}, true, function(Hovered, Active, Selected)
            end)
            RageUI.ButtonWithStyle("~b~Rdk Bouton", nil, {RightLabel = "~b~O"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('pistolet')
                end
            end)
        end, function()
        end)
        Citizen.Wait(0)
    end
end)

----------------------------------- Open menu ----------------------------

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1,344) then 
            RageUI.Visible(RMenu:Get('touches', 'main'), not RageUI.Visible(RMenu:Get('touches', 'main')))
        end
    end
end) 
            