local name = "Cobalt"
local imagePath = "resources_generated/env/voxel/ingots/cobalt-ingot/icons/env_cobalt-ingot_icon.png"

local rx, ry = getResolution()
local layer = createLayer()

local font = loadFont('FiraMono-Bold', ry/5)
setNextTextAlign(layer, 1, 2)
addText(layer, font, name, rx/2, ry*3/4)

if not image then
	image = loadImage(imagePath)
end

if isImageLoaded(image) then
	local imageX, imageY = getImageSize(image)
	local imageRatio = imageY/imageX

	local preferedImageSizeY = ry / 2
	local preferedImageSizeX = preferedImageSizeY / imageRatio

	addImage(layer, image, (rx - preferedImageSizeX)/2, 0, preferedImageSizeX, preferedImageSizeY)
else
	requestAnimationFrame(5)
end
