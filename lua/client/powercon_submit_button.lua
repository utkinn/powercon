local BUTTON_COLOR = Color(63, 201, 36, 200)  -- Green
local SEND_COLOR = Color(255, 255, 255, 200)  -- White
local submit = {}

function submit:Init()
    self:DockMargin(5,5,5,5)
    self:SetText('')
    self:SetTextColor(TEXT_COLOR)
    self:SetFont('UbuntuMono32')
end

function submit:Paint(width, height)
    draw.RoundedBox(4, 0, 0, width, height, BUTTON_COLOR)
    surface.SetMaterial(POWERCON_MATERIALS.SEND)
    surface.SetDrawColor(SEND_COLOR)
    surface.DrawTexturedRect(5, 5, width - 10, height - 10)
end

vgui.Register('PCSubmitButton', submit, 'DButton')
