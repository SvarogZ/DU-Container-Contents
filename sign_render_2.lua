local name = "A&S Fuel Tank M"
local imagePath_1 = "resources_generated/elements/fueltanks/fueltank-atmospheric-radial_001_l/icons/env_fueltank-atmospheric-radial_001_l_icon.png"
local imagePath_2 = "resources_generated/elements/fueltanks/fueltank-space-radial_001_l/icons/env_fueltank-space-radial_001_l_icon.png"

local fontSize = 1.0
local imageSIze = 1.4

local layer = createLayer()
local rx, ry = getResolution()

local font = loadFont('FiraMono-Bold', ry/5*fontSize)
setNextTextAlign(layer, 1, 2)
addText(layer, font, name, rx/2, ry*3/4)

image_1 = loadImage(imagePath_1)
image_2 = loadImage(imagePath_2)

if image_1 and isImageLoaded and isImageLoaded(image_1)
	and image_2 and isImageLoaded and isImageLoaded(image_2) then

	local preferedImageSizeY = ry / 2 * imageSIze

	local imageX_1, imageY_1 = getImageSize(image_1)
	local imageRatio_1 = imageY_1/imageX_1
	local preferedImageSizeX_1 = preferedImageSizeY / imageRatio_1

	local imageX_2, imageY_2 = getImageSize(image_2)
	local imageRatio_2 = imageY_2/imageX_2
	local preferedImageSizeX_2 = preferedImageSizeY / imageRatio_2

	addImage(layer, image_1, rx/2 - preferedImageSizeX_1, 0, preferedImageSizeX_1, preferedImageSizeY)
	addImage(layer, image_2, rx/2, 0, preferedImageSizeX_2, preferedImageSizeY)
else
	requestAnimationFrame(15)
end
