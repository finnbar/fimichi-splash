require("splash")
drawSplash = true

function love.load()
	loadSplash()
end

function love.draw()
	if drawSplash then
		if playSplash() then
			drawSplash = false
			endSplash()
		end
	else
		love.graphics.print("awesome game goes here",400,400)
	end
end

function love.update(dt)
	if drawSplash then
		updateSplash(dt)
	end
end