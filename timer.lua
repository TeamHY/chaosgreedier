local timer = {}

local items = {}
local itemsSize = 0

local barSprite = Sprite()
local barColor = Color(0, 0, 0, 1, 0, 0, 0)

local startLocation = Vector(125, 13)
local endLocation = Vector(204, 13)

function timer:Init()
	items = {}
	itemsSize = 0

	barSprite:Load("gfx/ui/ui_timebar.anm2")
	barSprite:Play("Idle")
	barSprite:LoadGraphics()
	barColor = Color(0, 0, 0, 1, 0, 0, 0)
end

function timer:Insert(itemID, durationTime, r, g, b)
	--Isaac.DebugString("Insert: " .. itemID .. ", " .. durationTime)
	r = r or 1
	g = g or 1
	b = b or 1

	itemsSize = itemsSize + 1

	local itemSprite = Sprite()
	itemSprite:Load("gfx/timer_item.anm2")
	itemSprite:Play("Idle")
	itemSprite:ReplaceSpritesheet(0, Isaac.GetItemConfig():GetCollectible(itemID).GfxFileName)
	itemSprite:LoadGraphics()

	table.insert(items, itemsSize, {id			= itemID,
									startedTime	= Game().TimeCounter,
									endingTime	= Game().TimeCounter + durationTime,
									ratio		= 0,
									sprite		= itemSprite,
									color		= Color(r, g, b, 1, 0, 0, 0)})
end

function timer:Renew()
	--Isaac.DebugString("Renew")
	for key, value in pairs(items) do
		value.ratio = (Game().TimeCounter - value.startedTime) / (value.endingTime - value.startedTime)
		--Isaac.DebugString(value.id .. ".ratio" .. value.ratio)

		if Game().TimeCounter >= value.endingTime then
			itemsSize = itemsSize - 1
			table.remove(items, key)
		end
	end

	-- 재정렬 코드
end

function timer:Rander()
	--Isaac.DebugString("Render")
	if itemsSize ~= 0 then
		barColor = Color(0, 0, 0, 1, 0, 0, 0)

		for key, value in pairs(items) do
			barColor.R = barColor.R + value.color.R
			barColor.G = barColor.G + value.color.G
			barColor.B = barColor.B + value.color.B
		end

		barColor.R = barColor.R / itemsSize
		barColor.G = barColor.G / itemsSize
		barColor.B = barColor.B / itemsSize

		barSprite.Color = barColor
		barSprite:Render(Vector(0, 0), Vector(0, 0), Vector(0, 0))

		for key, value in pairs(items) do
			local x = ((endLocation.X - startLocation.X) * value.ratio) + startLocation.X
			local y = ((endLocation.Y - startLocation.Y) * value.ratio) + startLocation.Y

			value.sprite:Render(Vector(x, y), Vector(0, 0), Vector(0, 0))
			Isaac.RenderText(math.ceil((value.endingTime - Game().TimeCounter) / 30), x + 3, y, value.color.R, value.color.G, value.color.B, 255)
		end
	end
end

return timer