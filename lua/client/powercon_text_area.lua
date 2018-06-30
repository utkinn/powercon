local textarea = {}

function textarea:Init()
    self:DockMargin(5,5,5,5)
end

function textarea:Paint(width, height)
    draw.RoundedBox(4, 0, 0, width, height, Color(0, 0, 0, 200))

    draw.DrawText(self:GetValue(), 'UbuntuMono', 1, 1, Color(255, 255, 255, 220))
    -- TODO: Check out Markup funcs
end

vgui.Register('PCTextArea', textarea, 'DTextEntry')
