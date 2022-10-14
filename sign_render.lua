local name = "Oxygen"
local imagePath = "resources_generated/elements/pures/pure-gazs/pure-gaz-oxygen_001/icons/env_pure-gaz-oxygen_001_icon.png"
local fontSize = 1

local layer = createLayer()
local rx, ry = getResolution()

local font = loadFont('FiraMono-Bold', ry/5*fontSize)
setNextTextAlign(layer, 1, 2)
addText(layer, font, name, rx/2, ry*3/4)

image = loadImage(imagePath)

if image and isImageLoaded and isImageLoaded(image) then
	local imageX, imageY = getImageSize(image)
	local imageRatio = imageY/imageX
	local preferedImageSizeY = ry / 2
	local preferedImageSizeX = preferedImageSizeY / imageRatio

	addImage(layer, image, (rx - preferedImageSizeX)/2, 0, preferedImageSizeX, preferedImageSizeY)
else
	requestAnimationFrame(15)
end
