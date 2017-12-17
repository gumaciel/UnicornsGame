--load

function imagem_tiro()
	imgTiro = love.graphics.newImage("data/objs/bala.png")
	
	atira = true
	delayTiro = 0.3
	tempoAteAtirar = delayTiro
	velocidadetiro = 300
	vida = true
	tiros = {} -- direita
	tiros1 = {} --esquerda
	tiros2 = {} --cima
	tiros3 = {} --baixo
	tiros4 = {} --cima+direita
	tiros5 = {} --cima+esquerda
	tiros6 = {} --baixo+esquerda
	tiros7 = {} --baixo+direita

	direcaoB = true
end

--load


--update
function movimento_tiro(dt)
	tempoAteAtirar = tempoAteAtirar - (1 * dt)
	if tempoAteAtirar < 0 then
		atira = true
	end

	--[[ primeiro if = checar vidabala do character
	segundo = atirar pra direita
	terceiro = atirar pra esquerda
	quarto = atirar pra cima
	quinto = atira pra baixo
	sexto = atira pra cima + direita
	setimo = atira pra cima + esquerda
	oitavo = atira pra baixo + esquerda
	nono = atira pra baixo + direita
	]]

	if vida == true then
		if love.keyboard.isDown ("z") and atira == true and gustavo.direcaoX == true and gustavo.direcaoY == false and gustavo.direcaoYbaixo == false and gustavo.direcaoY == false then
			novoTiro = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros, novoTiro)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and gustavo.direcaoX == false and gustavo.direcaoY == false and gustavo.direcaoYbaixo == false and gustavo.direcaoY == false then
			novoTiro1 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros1, novoTiro1)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and  gustavo.direcaoY == true and gustavo.direcaoYcima == true and gustavo.direcaoYXcima == false and gustavo.direcaoYXbaixo == false then
			novoTiro2 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros2, novoTiro2)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and gustavo.direcaoY == true and gustavo.direcaoYbaixo == true and gustavo.direcaoYXcima == false and gustavo.direcaoYXbaixo == false  then
			novoTiro3 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros3, novoTiro3)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and gustavo.direcaoX == true and gustavo.direcaoY == true and gustavo.direcaoYcima == true and gustavo.direcaoYbaixo == false and gustavo.direcaoYXcima == true then
			novoTiro4 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros4, novoTiro4)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and gustavo.direcaoX == false and gustavo.direcaoY == true and gustavo.direcaoYcima == true and gustavo.direcaoYbaixo == false and gustavo.direcaoYXcima == true then
			novoTiro5 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros5, novoTiro5)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and gustavo.direcaoX == false and gustavo.direcaoY == true and gustavo.direcaoYcima == false and gustavo.direcaoYbaixo == true and gustavo.direcaoYXcima == false and gustavo.direcaoYXbaixo == true then
			novoTiro6 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros6, novoTiro6)
			atira = false
			tempoAteAtirar = delayTiro
		elseif love.keyboard.isDown ("z") and atira == true and gustavo.direcaoX == true and gustavo.direcaoY == true and gustavo.direcaoYcima == false and gustavo.direcaoYbaixo == true and gustavo.direcaoYXcima == false and gustavo.direcaoYXbaixo == true then
			novoTiro7 = {x = gustavo.posX - 200, y = gustavo.posY - 50, img = imgTiro}
			table.insert(tiros7, novoTiro7)
			atira = false
			tempoAteAtirar = delayTiro
		end
	end


	--tiro pra direita
	for i, tiro in ipairs(tiros) do
		tiro.x = tiro.x + (velocidadetiro * dt)
		if tiro.x > 2000 then
			table.remove(tiros, i)
		end
	end
	--tiro pra direita

	--tiro pra esquerda
	for i1, tiro1 in ipairs(tiros1) do
		tiro1.x = tiro1.x - (velocidadetiro * dt)
		if tiro1.x == 0 then
			table.remove(tiros1, i1)
		end
	end
	--tiro pra esquerda

	--tiro pra cima
	for i2, tiro2 in ipairs(tiros2) do
		tiro2.y = tiro2.y - (velocidadetiro * dt)
		if tiro2.y == 0 then
			table.remove(tiros2, i2)
		end
	end
	--tiro pra cima

	--tiro pra baixo
	for i3, tiro3 in ipairs(tiros3) do
		tiro3.y = tiro3.y + (velocidadetiro * dt)
		if tiro3.y == 0 then
			table.remove(tiros3, i3)
		end
	end
	--tiro pra baixo

	--tiro pra cima + direita
	for i4, tiro4 in ipairs(tiros4) do
		tiro4.y = tiro4.y - (velocidadetiro * dt)
		tiro4.x = tiro4.x + (velocidadetiro * dt)
		if tiro4.y == 0 then
			table.remove(tiros4, i4)
		end
	end
	--tiro pra cima + direita

	--tiro pra cima + esquerda
	for i5, tiro5 in ipairs(tiros5) do
		tiro5.y = tiro5.y - (velocidadetiro * dt)
		tiro5.x = tiro5.x - (velocidadetiro * dt)
		if tiro5.y == 0 then
			table.remove(tiros5, i5)
		end
	end
	--tiro pra cima + esquerda

	--tiro pra baixo + esquerda
	for i6, tiro6 in ipairs(tiros6) do
		tiro6.y = tiro6.y + (velocidadetiro * dt)
		tiro6.x = tiro6.x - (velocidadetiro * dt)
		if tiro6.y == 0 then
			table.remove(tiros6, i6)
		end
	end
	--tiro pra baixo + esquerda	

	--tiro pra baixo + direita
	for i7, tiro7 in ipairs(tiros7) do
		tiro7.y = tiro7.y + (velocidadetiro * dt)
		tiro7.x = tiro7.x + (velocidadetiro * dt)
		if tiro7.y == 0 then
			table.remove(tiros7, i7)
		end
	end
	--tiro pra baixo + direita	

end

--update

--draw
function desenho_tiro()
	if vida == true then
		for i, tiro in ipairs(tiros) do
			love.graphics.draw(tiro.img, tiro.x, tiro.y, 0, -1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end
		for i1, tiro1 in ipairs(tiros1) do
			love.graphics.draw(tiro1.img, tiro1.x, tiro1.y, 0, 1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end
		for i2, tiro2 in ipairs(tiros2) do
			love.graphics.draw(tiro2.img, tiro2.x, tiro2.y, 11, -1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end
		for i3, tiro3 in ipairs(tiros3) do
			love.graphics.draw(tiro3.img, tiro3.x, tiro3.y, 11, 1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end
		for i4, tiro4 in ipairs(tiros4) do
			love.graphics.draw(tiro4.img, tiro4.x, tiro4.y, 12, -1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end	
		for i5, tiro5 in ipairs(tiros5) do
			love.graphics.draw(tiro5.img, tiro5.x, tiro5.y, 1, 1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end	
		for i6, tiro6 in ipairs(tiros6) do
			love.graphics.draw(tiro6.img, tiro6.x, tiro6.y, 12, 1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end	
		for i7, tiro7 in ipairs(tiros7) do
			love.graphics.draw(tiro7.img, tiro7.x, tiro7.y, 4, 1, 1, imgTiro:getWidth()/2, imgTiro:getHeight())
		end	
	end
end
--draw