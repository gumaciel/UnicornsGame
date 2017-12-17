function imagem_boss1()
	
	vidaboss1 = true
	vidaboss1torsonum = 100
	vidaboss1costanum = 100

	boss1 = {
		posX = larguraTela + 2000,
		posY = alturaTela,
		velocidade = 150,
		direcaoX = true
	}


	imgBoss1 = love.graphics.newImage("data/boss/cabelinhoboss.png")
	imgBoss1inv = love.graphics.newImage("data/boss/cabelinhobossinv.png")


	local boss1anim = anim.newGrid(435, 280, imgBoss1:getWidth(), imgBoss1:getHeight())
	animationboss1 = anim.newAnimation (boss1anim ("1-4", 1), 0.06)

	local boss1animinv = anim.newGrid(435, 280, imgBoss1inv:getWidth(), imgBoss1inv:getHeight())
	animationboss1inv = anim.newAnimation (boss1animinv ("1-4", 1), 0.06)

end

function movimento_boss1(dt)
	animationboss1inv:update(dt)
	animationboss1:update(dt)

	if vidaboss1torsonum < 0 and vidaboss1costanum < 0 then
		vidaboss1 = false
		pontos = pontos + 50
		boss1.posX = 99999
		boss1.posY = 99999
	end




end

function desenho_boss1()

	if vidaboss1 == true then
		if boss1.direcaoX == false then
			animationboss1inv:draw(imgBoss1inv, boss1.posX, boss1.posY, 0, 1, 1, imgBoss1inv:getWidth(), imgBoss1inv:getHeight())
		end
		if boss1.direcaoX == true then
			animationboss1:draw(imgBoss1, boss1.posX, boss1.posY, 0, 1, 1, imgBoss1:getWidth(), imgBoss1:getHeight())
		end
	end
end