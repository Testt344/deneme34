Config = {}

-- === VERSION 1.3.0 ===

-- === IMPORTANT ===
--  make sure to add the export in gcphone as shown in readme.md

-- === GENERAL ===
Config.OpenUICommand            = 'carplay' -- Console command to open the NUI
Config.OpenUIKey                = 'k'
Config.OpenTrunkCameraCommand   = 'trunk-camera' -- Console command to open the NUI
Config.OpenTrunkCameraKey       = 'f7' -- Open or close
Config.Km                       = true -- if false mph
Config.UseAcePermission         = false -- in server.cfg add: add_ace identifier.steam:XXXXXXXXXXXXXXX command.carplay allow
Config.Apps                     = {
    ['messages'] = true,
    ['music'] = true,
    ['actions'] = true,
    ['trunk'] = true
} -- set to FALSE if you want to disable the app
Config.Draggable                = true -- if TRUE you will be able to drag and resize the UI
Config.RemoveFocusKey           = 16 -- [16 = SHIFT] with the UI open, pressing this button the UI will remain on screen but you will be able to use mouse and keyboard (drive)
-- that's a javascript key, use this to change https://www.toptal.com/developers/keycode      
Config.ReturnFocusCommand       = "carplay-focus"       
Config.ReturnFocusKey           = "H"
Config.High3DSound              = false

-- === PHONE ===
Config.NeedPhoneItem            = true -- true if you need a phone in inventory to use carplay
Config.PhoneItemName            = {
    'phone', 
    'classic_phone',
    'red_phone', 
    'blue_phone',
    'black_phone',
    'gold_phone',
    'green_phone',
    'greenlight_phone',
    'pink_phone',
    'white_phone',

} -- item name of the phones
Config.PhoneType                = 'quasar' 
-- now supported: gcphone | gksphone | dphone | highphone | quasar | chezza | npwd | roadphone

-- === NAVIGATOR ===
Config.EnableNavigator          = true
Config.NavigatorPosition        = 'top-left' -- COPY-PASE ONE OF THIS: top-left | top-middle | top-right | middle-left | middle-middle | middle-right | bottom-left | bottom-middle | bottom-right
Config.DisplayCurrentStreet     = true -- if to show or not the first rectangle with the current street

-- === CARPLAY INSTALLATION ===
Config.NoInstall                = false -- all vehicles will be able to use carplay also without installing it 
Config.RequireMechanic          = true
Config.MechanicJobName          = {
    'mechanic'
}
Config.ItemUsable               = true
Config.CarplayInstallCommand    = 'carplay-install'
Config.InstallTime              = 10000 -- milliseconds

-- === MUSIC ===
Config.BlackListSongs           = {
    '3mfTB5wLTtg',
    '6Joyj0dmkug'
}

-- === TEXT ===
Config.Text = {
    ['no_phone'] = "You don't have a phone",
    ['no_carplay'] = "Carplay is not installed in this vehicle",
    ['not_owner'] = 'You are not the owner of this vehicle',
    ['carplay_installed'] = "Installing carplay",
    ['no_item'] = "You don't have the item"
}

-- === DISPLAY TEXT ===
-- === Only change if you know what you're doing! === 
function DisplayTextMessage(msg, type)
    if type then
        --exports["mythic_notify"]:DoHudText(type, msg, 3000)
        lib.notify({
            title = 'CarPlay',
            description = msg,
            type = type,
            position = 'top-left',
            duration = 3000
        })
    end

    --[[
        SetNotificationTextEntry('STRING')
        AddTextComponentString(msg)
        DrawNotification(0,1)
    ]]--
end
