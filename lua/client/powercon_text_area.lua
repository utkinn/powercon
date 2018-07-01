local textarea = {}

function textarea:Init()
    self:DockMargin(5,5,5,5)
    self.textPaddingX = 1
    self.textPaddingY = 1
end

function textarea:Paint(width, height)
    if self:HasFocus() then
        surface.SetDrawColor(255, 255, 255, 200)
        surface.DrawOutlinedRect(0, 0, width, height)
    end
    --     draw.RoundedBox(4, 0, 0, width, height, Color(20, 20, 20, 200))
    -- else
        draw.RoundedBox(4, 0, 0, width, height, Color(0, 0, 0, 200))
    -- end

    draw.DrawText(self:GetValue(), 'UbuntuMono18', self.textPaddingX, self.textPaddingY, Color(255, 255, 255, 220))
    -- TODO: Check out Markup funcs
end

vgui.Register('PCTextArea', textarea, 'DTextEntry')
