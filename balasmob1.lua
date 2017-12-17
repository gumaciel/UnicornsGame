function imagem_tiromob1()
	imgTiromob1 = love.graphics.newImage("data/objs/bala.png")

	atiramob1 = true
	delayTiromob1 = 1
	tempoAteAtirarmob1 = delayTiromob1
	velocidadetiromob1 = 300
	vidamob1 = true
	tirosmob1 = {} -- direita
	tiros1mob1 = {} --esquerda
end

function movimento_tiromob1(dt)
	tempoAteAtirarmob1 = tempoAteAtirarmob1 - (1 * dt)
	if tempoAteAtirarmob1 < 0 then
		atiramob1 = true
	end
	if vidamob1 == true then
		if atiramob1 == true and mob1.direcaoX == true then
			novoTiromob1 = {x = mob1.posX - 230, y = mob1.posY - 70, img = imgTiromob1}
			table.insert(tirosmob1, novoTiromob1)
			atiramob1 = false
			tempoAteAtirarmob1 = delayTiromob1
		elseif atiramob1 == true and mob1.direcaoX == false then
			novoTiro1mob1 = {x = mob1.posX - 250, y = mob1.posY - 70, img = imgTiromob1}
			table.insert(tiros1mob1, novoTiro1mob1)
			atiramob1 = false
			tempoAteAtirarmob1 = delayTiromob1
		end
	end


	for imob1, tiromob1 in ipairs(tirosmob1) do
		tiromob1.x = tiromob1.x + (velocidadetiromob1 * dt)
		if tiromob1.x > 2000 then
			table.remove(tirosmob1, imob1)
		end
	end
	--tiro pra direita

	--tiro pra esquerda
	for i1mob1, tiro1mob1 in ipairs(tiros1mob1) do
		tiro1mob1.x = tiro1mob1.x - (velocidadetiromob1 * dt)
		if tiro1mob1.x == 0 then
			table.remove(tiros1mob1, i1mob1)
		end
	end
	--tiro pra esquerd
end

function desenho_tiromob1()
	for imob1, tiromob1 in ipairs(tirosmob1) do
		love.graphics.draw(tiromob1.img, tiromob1.x, tiromob1.y, 0, -1, 1, imgTiromob1:getWidth()/2, imgTiromob1:getHeight())
	end
	for i1mob1, tiro1mob1 in ipairs(tiros1mob1) do
		love.graphics.draw(tiro1mob1.img, tiro1mob1.x, tiro1mob1.y, 0, 1, 1, imgTiromob1:getWidth()/2, imgTiromob1:getHeight())
	end
end
