fimichi-splash
==============

a splash screen for fimichi games

this is an animated splash! just include "splash.lua" to use!

sample code
===========

drawSplash = true

function love.load()
	loadSplash()
end

function love.draw()
	if drawSplash then
		if playSplash then --returns true when done
			drawSplash=false
			endSplash()
		end
	else
		--main game code!
	end
end

function love.update()
	if drawSplash then
		updateSplash()
	end
end