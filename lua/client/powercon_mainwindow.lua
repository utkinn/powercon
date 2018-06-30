include 'powercon_text_area.lua'

local BGCOLOR = Color(0, 0, 0, 150)
local CORNER_RADIUS = 4

local mainwindow = vgui.Create('DFrame')
mainwindow:SetPos(5, 5)
mainwindow:SetSize(600, 800)
mainwindow:SetTitle('PowerCon')
mainwindow:SetSizable(true)
function mainwindow:Paint(width, height)
    draw.RoundedBox(CORNER_RADIUS, 0, 0, width, height, BGCOLOR)
end

local textarea = vgui.Create('PCTextArea', mainwindow)
textarea:Dock(FILL)

local bottomPanel = vgui.Create('DPanel', mainwindow)
bottomPanel:Dock(BOTTOM)

local enterField = vgui.Create('PCTextArea', bottomPanel)
enterField:Dock(LEFT)
enterField:SetHeight(22)

local submit = vgui.Create('DButton', bottomPanel)
enterField:Dock(RIGHT)
enterField:SetSize(30, 30)



mainwindow:MakePopup()
