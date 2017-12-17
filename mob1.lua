function imagem_mob1()
	imagem_tiromob1()

	vidamob1 = true
	vidamob1num = 100

	mob1 = {
		posX = larguraTela, 
		posY = alturaTela,
		posX1 = larguraTela,
		posY1 = alturaTela,
		velocidade = 100,
		direcaoX = true
	}

	imgMob1 = love.graphics.newImage("data/chars/mobs/mob1.png")
	imgMob1inv = love.graphics.newImage("data/chars/mobs/mob1inv.png")

	local mob1anim = anim.newGrid(75, 120, imgMob1:getWidth(), imgMob1:getHeight())
	animationmob1 = anim.newAnimation (mob1anim ("1-4", 1), 0.08)

	local mob1animinv = anim.newGrid(75, 120, imgMob1inv:getWidth(), imgMob1inv:getHeight())
	animationmob1inv = anim.newAnimation (mob1animinv ("1-4", 1), 0.08)



end

function movimento_mob1(dt)
	movimento_tiromob1(dt)
	animationmob1inv:update(dt)
	animationmob1:update(dt)



	if qntinimigos == 1 and mob1.direcaoX == false and vidamob1 and stage == 1 then
		if mob1.posX > (600 + imgMob1inv:getWidth()) then
			mob1.posX = mob1.posX - mob1.velocidade * dt 
			elseif mob1.posX < (600 + imgMob1inv:getWidth()) then
				mob1.direcaoX = true
				animationmob1:update(dt)
				animationmob1inv:update(dt)
			end
	end
	if qntinimigos == 1 and mob1.direcaoX == true and vidamob1 and stage == 1 then
		if mob1.posX ~= (1 + imgMob1inv:getWidth()) then
			mob1.posX = mob1.posX + mob1.velocidade * dt
			if mob1.posX > (900 + imgMob1inv:getWidth()) then
				mob1.direcaoX = false
				animationmob1inv:update(dt)
				animationmob1:update(dt)
			end
		end
	end
end






function desenho_mob1()

	desenho_tiromob1()
	if vidamob1 == true then
		if mob1.direcaoX == false then
			animationmob1inv:draw(imgMob1inv, mob1.posX, mob1.posY, 0, 1, 1, imgMob1inv:getWidth(), imgMob1inv:getHeight())
		end
		if mob1.direcaoX == true then
			animationmob1:draw(imgMob1, mob1.posX, mob1.posY, 0, 1, 1, imgMob1:getWidth(), imgMob1:getHeight())
		end
	end


end