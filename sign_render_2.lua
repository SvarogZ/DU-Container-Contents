local name = "B.Cont.S&M"
local imagePath_1 = "resources_generated/elements/containers/container-legacy_001/icons/env_container-legacy_001_icon.png"
local imagePath_2 = "resources_generated/elements/containers/container-legacy_001/icons/env_container-legacy_001_icon.png"

local fontSize = 1.2
local imageSIze_1 = 1.0
local imageSIze_2 = 1.5

local layer = createLayer()
local rx, ry = getResolution()

local font = loadFont('FiraMono-Bold', ry/5*fontSize)
setNextTextAlign(layer, 1, 2)
addText(layer, font, name, rx/2, ry*3/4)

image_1 = loadImage(imagePath_1)
image_2 = loadImage(imagePath_2)

if image_1 and isImageLoaded and isImageLoaded(image_1)
	and image_2 and isImageLoaded and isImageLoaded(image_2) then

	local preferedImageSizeY_1 = ry / 2 * imageSIze_1
	local preferedImageSizeY_2 = ry / 2 * imageSIze_2

	local imageX_1, imageY_1 = getImageSize(image_1)
	local imageRatio_1 = imageY_1/imageX_1
	local preferedImageSizeX_1 = preferedImageSizeY_1 / imageRatio_1

	local imageX_2, imageY_2 = getImageSize(image_2)
	local imageRatio_2 = imageY_2/imageX_2
	local preferedImageSizeX_2 = preferedImageSizeY_2 / imageRatio_2

	addImage(layer, image_1, rx/4 - preferedImageSizeX_1/2, ry/4 - preferedImageSizeY_1/2, preferedImageSizeX_1, preferedImageSizeY_1)
	addImage(layer, image_2, rx/4*3 - preferedImageSizeX_2/2, ry/4 - preferedImageSizeY_2/2, preferedImageSizeX_2, preferedImageSizeY_2)
else
	requestAnimationFrame(15)
end
