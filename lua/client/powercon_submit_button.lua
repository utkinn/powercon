local BUTTON_COLOR = Color(63, 201, 36, 200)  -- Green
local submit = {}

function submit:Init()
    self:DockMargin(5,5,5,5)
end

function submit:Paint(width, height)
    draw.RoundedBox(4, 0, 0, width, height, BUTTON_COLOR)
    -- TODO: Add ">"
end

vgui.Register('PCSubmitButton', submit, 'DButton')
