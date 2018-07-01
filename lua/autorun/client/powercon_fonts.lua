function createFonts()
    surface.CreateFont('UbuntuMono18', {
        font = 'Ubuntu Mono',
        extended = true,
        size = 18,
        weight = 500
    })

    surface.CreateFont('UbuntuMono32', {
        font = 'Ubuntu Mono',
        extended = true,
        size = 32,
        weight = 500
    })
end

createFonts()
