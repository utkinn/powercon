if SERVER then
    util.AddNetworkString 'PowerCon: Log update'
end

local oldPrint = print
local oldMsg = Msg
local updateLog  -- Forward declaration

local function update(str)
    oldPrint('spam')
    local str = tostring(v)

    if SERVER then
        net.Start('PowerCon: Log update')
            net.WriteString(str)
        net.Broadcast()
    else
        updateLog(str)
    end
end

function print(...)
    oldPrint(...)
    -- for _, v in pairs(...) do
    update(...)
    -- end
end

function Msg(...)
    oldMsg(...)
    update(...)
end

if CLIENT then

PowerCon_logTextAreas = {}
PowerCon_consoleLog = ''
updateLog = function(str)
    PowerCon_consoleLog = PowerCon_consoleLog..str
    for _, area in pairs(PowerCon_logTextAreas) do
        area:SetText(PowerCon_consoleLog)
    end
    oldPrint 'update'
    oldPrint(PowerCon_consoleLog)
end

net.Receive('PowerCon: Log update', function()
    updateLog(net.ReadString())
    oldPrint('receive')
end)

end
