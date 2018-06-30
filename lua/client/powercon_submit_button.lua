local submit = {}

function submit:Init()
    self:DockMargin(5,5,5,5)
end

function submit:Paint(width, height)
    draw.RoundedBox(4, 0, 0, width, height, Color(63, 201, 36, 200))
end

vgui.Register('PCSubmitButton', submit, 'DButton')
