--load
function imagem_gustavo()
	--table e informações sobre o personagem
	--Vida e pontuação

	imagem_mundo()

	estatistica = false
	vida = true
	vidagusnum = 5
	toque = true
	pontos = 0
	tempoimune = 2
	tempoatenaoimune = tempoimune
	delayataca = 0.1
	tempoataca = delayataca
	emobj = false
	inair = false
	onground = false

	espadatk = false

	gustavo = {
		posX = larguraTela / 2,	
		posY = alturaTela,
		velocidade = 150,
		velocidadeposY = 0,
		alturapulo = -350,
		gravidade = -500,
		noar = true,
		direcaoY = false,
		direcaoYcima = false,
		direcaoYbaixo = false,
		danotiromob1 = 51,
		danotiroboss1 = 6,
		danoespadamob1 = 250,
		danoespadaboss1 = 50,
		direcaoX = true
	}
	gustavo.ground = gustavo.posY
	--table e informações sobre o personagem
	imgExplosao = love.graphics.newImage("data/ex/explo.png")

	imgGustavo = love.graphics.newImage("data/chars/gustavo/gustavoreal.png")
	imgGustavomorto = love.graphics.newImage("data/chars/gustavo/gustavorealmorto.png")
	imgGustavoinv = love.graphics.newImage("data/chars/gustavo/gustavoinv.png")
	imgGustavomortoinv = love.graphics.newImage("data/chars/gustavo/gustavomortoinv.png")

	imgGustavoespadaD = love.graphics.newImage("data/chars/gustavo/gustavosword.png")
	imgGustavoespadaDmorto = love.graphics.newImage("data/chars/gustavo/gustavoswordmorto.png")
	imgGustavoespadaE = love.graphics.newImage("data/chars/gustavo/gustavoswordE.png")
	imgGustavoespadaEmorto = love.graphics.newImage("data/chars/gustavo/gustavoswordEmorto.png")

	local gusanimmorto = anim.newGrid(60, 175, imgGustavo:getWidth(), imgGustavo:getHeight())
	animationgusmorto = anim.newAnimation (gusanimmorto ("1-4", 1), 0.06)

	local gusanim = anim.newGrid(60, 175, imgGustavo:getWidth(), imgGustavo:getHeight())
	animationgus = anim.newAnimation (gusanim ("1-4", 1), 0.06)
	local gusaniminv = anim.newGrid(60, 175, imgGustavoinv:getWidth(), imgGustavoinv:getHeight())
	animationgusinv = anim.newAnimation (gusaniminv ("1-4", 1) , 0.06)
	local gusanimmortoinv = anim.newGrid(60, 175, imgGustavoinv:getWidth(), imgGustavoinv:getHeight())
	animationgusmortoinv = anim.newAnimation (gusanimmortoinv ("1-4", 1) , 0.06)

	local exploanim = anim.newGrid(188, 182, imgExplosao:getWidth(), imgExplosao:getHeight())
	animationexplo = anim.newAnimation (exploanim ("1-4", 1), 0.06)
end

--load

--update
function movimento_gustavo(dt)

	if love.keyboard.isDown ("right") then
		if gustavo.posX < (1445 - imgGustavo:getWidth()) and not
			--dgaf
			(checaColisaogustavocaixa1direita (caixa1.posX, 
			caixa1.posY, 
			imgCaixa1:getWidth(), 
			imgCaixa1:getHeight(), 
			gustavo.posX - (imgGustavo:getWidth()/2), 
			gustavo.posY - 10, 
			imgGustavo:getWidth(), 
			imgGustavo:getHeight()) 
			or checaColisaogustavocaixa1direita (caixa2.posX, 
			caixa2.posY, 
			imgCaixa2:getWidth(), 
			imgCaixa2:getHeight(), 
			gustavo.posX - (imgGustavo:getWidth()/2), 
			gustavo.posY - 10, 
			imgGustavo:getWidth(), 
			imgGustavo:getHeight())
			or checaColisaogustavocaixa1direita (caixa3.posX, 
			caixa3.posY, 
			imgCaixa3:getWidth(), 
			imgCaixa3:getHeight(), 
			gustavo.posX - (imgGustavo:getWidth()/2), 
			gustavo.posY - 10, 
			imgGustavo:getWidth(), 
			imgGustavo:getHeight()))   
				then
			gustavo.posX = gustavo.posX + gustavo.velocidade * dt 
			gustavo.direcaoX = true
			animationgus:update(dt)
			animationgusmorto:update(dt)
		end
	end


	if love.keyboard.isDown ("left") then
		if gustavo.posX > (120 + imgGustavoinv:getWidth() / 2) and not
			--dgaf
			(checaColisaogustavocaixa1esquerda (caixa1.posX, 
			caixa1.posY, 
			imgCaixa1:getWidth(), 
			imgCaixa1:getHeight(), 
			gustavo.posX - (imgGustavo:getWidth()/2), 
			gustavo.posY - 10, 
			imgGustavo:getWidth(), 
			imgGustavo:getHeight())  
			or checaColisaogustavocaixa1esquerda (caixa2.posX, 
			caixa2.posY, 
			imgCaixa2:getWidth(), 
			imgCaixa2:getHeight(), 
			gustavo.posX - (imgGustavo:getWidth()/2), 
			gustavo.posY - 10, 
			imgGustavo:getWidth(), 
			imgGustavo:getHeight())
			or checaColisaogustavocaixa1esquerda (caixa3.posX, 
			caixa3.posY, 
			imgCaixa3:getWidth(), 
			imgCaixa3:getHeight(), 
			gustavo.posX - (imgGustavo:getWidth()/2), 
			gustavo.posY - 10, 
			imgGustavo:getWidth(), 
			imgGustavo:getHeight())) 
				then
			gustavo.posX = gustavo.posX - gustavo.velocidade * dt
			gustavo.direcaoX = false
			animationgusinv:update(dt)
			animationgusmortoinv:update(dt)

		end	
	end



	-- pulo

	if love.keyboard.isDown ("space") and (checaColisaogustavocaixa1esquerdaDOUBLE (caixa2.posX, 
		caixa2.posY, 
		imgCaixa2:getWidth(), 
		imgCaixa2:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY - 10, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight()) 
		or
		checaColisaogustavocaixa1direitaDOUBLE	 (caixa2.posX, 
		caixa2.posY, 
		imgCaixa2:getWidth(), 
		imgCaixa2:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY - 10, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())
		or 
		checaColisaogustavocaixa1esquerdaDOUBLE (caixa3.posX, 
		caixa3.posY, 
		imgCaixa3:getWidth(), 
		imgCaixa3:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY - 10, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight()) 
		or
		checaColisaogustavocaixa1direitaDOUBLE	 (caixa3.posX, 
		caixa3.posY, 
		imgCaixa3:getWidth(), 
		imgCaixa3:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY - 10, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight()))
			then
		gustavo.velocidadeposY = 0

	end


	if love.keyboard.isDown ("space") then
		if gustavo.velocidadeposY == 0 then
			gustavo.velocidadeposY = gustavo.alturapulo
			animationgus:gotoFrame(2)
			animationgusinv:gotoFrame(3)
			animationgusmorto:gotoFrame(2)
			animationgusmortoinv:gotoFrame(3)
		end
	end

	if gustavo.velocidadeposY ~= 0 then
		inair = true
		gustavo.posY = gustavo.posY + gustavo.velocidadeposY * dt 
		gustavo.velocidadeposY = gustavo.velocidadeposY - gustavo.gravidade * dt
	elseif gustavo.velocidadeposY == 0 then
		inair = false
	end

	if gustavo.posY > gustavo.ground
			then
		gustavo.velocidadeposY = 0 
		gustavo.posY = gustavo.ground
		animationgus:pauseAtStart()
		animationgusinv:pauseAtEnd()
		animationgus:resume(dt)
		animationgusinv:resume(dt)
	end

	if (checaColisaogustavocaixa1pulo (caixa1.posX, 
		caixa1.posY, 
		imgCaixa1:getWidth(), 
		imgCaixa1:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())  
		or checaColisaogustavocaixa1pulo (caixa2.posX, 
		caixa2.posY, 
		imgCaixa2:getWidth(), 
		imgCaixa2:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())
		or checaColisaogustavocaixa1pulo (caixa3.posX, 
		caixa3.posY, 
		imgCaixa3:getWidth(), 
		imgCaixa3:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight()))
			then
		gustavo.velocidadeposY = 0
		emobj = true
	elseif
		not (checaColisaogustavocaixa1pulo (caixa1.posX, 
		caixa1.posY, 
		imgCaixa1:getWidth(), 
		imgCaixa1:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())
		or checaColisaogustavocaixa1pulo (caixa2.posX, 
		caixa2.posY, 
		imgCaixa2:getWidth(), 
		imgCaixa2:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())
		or checaColisaogustavocaixa1pulo (caixa3.posX, 
		caixa3.posY, 
		imgCaixa3:getWidth(), 
		imgCaixa3:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight()))
			and emobj == true and inair == false then
		emobj = false
		gustavo.velocidadeposY = 100 -1 * dt
	end

	if (checaColisaogustavocaixa1baixo (caixa1.posX, 
		caixa1.posY, 
		imgCaixa1:getWidth(), 
		imgCaixa1:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())
	or checaColisaogustavocaixa1baixo (caixa2.posX, 
		caixa2.posY, 
		imgCaixa2:getWidth(), 
		imgCaixa2:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight())
	or checaColisaogustavocaixa1baixo (caixa3.posX, 
		caixa3.posY, 
		imgCaixa3:getWidth(), 
		imgCaixa3:getHeight(), 
		gustavo.posX - (imgGustavo:getWidth()/2), 
		gustavo.posY, 
		imgGustavo:getWidth(), 
		imgGustavo:getHeight()))
			then
		gustavo.velocidadeposY = 100 -1 * dt
	end

	-- pulo


	if love.keyboard.isDown ("right") and love.keyboard.isDown ("left") then
		animationgus:pauseAtStart()
		animationgusinv:pauseAtEnd()
		animationgus:resume(dt)
		animationgusinv:resume(dt)
		animationgusmorto:pauseAtStart()
		animationgusmortoinv:pauseAtEnd()
		animationgusmorto:resume(dt)
		animationgusmortoinv:resume(dt)
	end

	function love.keyreleased(key, unicode)
		if key == "right" then
			animationgus:pauseAtStart()
			animationgus:resume(dt)
			animationgusmorto:pauseAtStart()
			animationgusmorto:resume(dt)
		end

		if key == "left" then
			animationgusinv:pauseAtEnd()
			animationgusinv:resume(dt)
			animationgusmortoinv:pauseAtEnd()
			animationgusmortoinv:resume(dt)
		end

		if key == "up" then
			gustavo.direcaoY = false
			gustavo.direcaoYcima = false
			gustavo.direcaoYbaixo = false
			gustavo.direcaoYXcima = false
		end
		if key == "down" then
			gustavo.direcaoY = false
			gustavo.direcaoYcima = false
			gustavo.direcaoYbaixo = false
			gustavo.direcaoYXcima = false
		end
		if key == "right" then
			gustavo.direcaoYXcima = false
			gustavo.direcaoYXbaixo = false
		end
		if key == "left" then
			gustavo.direcaoYXcima = false
			gustavo.direcaoYXbaixo = false
		end
		if key =="c" then
			gustavo.velocidade = gustavo.velocidade - 150
		end

	end

	--pulo
	if love.keyboard.isDown ("up") then
		gustavo.direcaoY = true
		gustavo.direcaoYcima = true
		if love.keyboard.isDown ("right") then
			gustavo.direcaoY = true
			gustavo.direcaoYXcima = true
			gustavo.direcaoYXbaixo = false
			gustavo.direcaoYbaixo = false
			gustavo.direcaoYcima = true

		end
		if love.keyboard.isDown ("left") then
			gustavo.direcaoY = true
			gustavo.direcaoYXcima = true
			gustavo.direcaoYXbaixo = false
			gustavo.direcaoYbaixo = false
			gustavo.direcaoYcima = true
		end	
	end

	if love.keyboard.isDown ("down") then
		gustavo.direcaoY = true
		gustavo.direcaoYbaixo = true
		if love.keyboard.isDown ("right") then
			gustavo.direcaoY = true
			gustavo.direcaoYXcima = false
			gustavo.direcaoYXbaixo = true
			gustavo.direcaoYbaixo = true
			gustavo.direcaoYcima = false
		end
		if love.keyboard.isDown ("left") then
			gustavo.direcaoY = true
			gustavo.direcaoYXcima = false
			gustavo.direcaoYXbaixo = true
			gustavo.direcaoYbaixo = true
			gustavo.direcaoYcima = false
		end	
	end

	--do not move
	tempoataca = tempoataca - (1 * dt)
	if tempoataca < 0 then
		espadatk = false
	end
	function love.keypressed(key, unicode)
		if key == "x" then
			espadatk = true
			tempoataca = delayataca
		end
		if key == "'" and estatistica == false then
			estatistica = true
		elseif 
			key == "'" and estatistica == true then
			estatistica = false
		end
		if key == "escape" then
			love.event.quit()
		end


		if key =="c" then
			gustavo.velocidade = gustavo.velocidade + 150
		end
		if key == "x" and qntinimigos == 0 and (gustavo.posX < (1445 - imgGustavo:getWidth())) == false and stage == 1 then
			stage = 2
			qntinimigos1 = 1
			gustavo.posX = 100
			boss1.posX = boss1.posX - 800
			caixa2.posX = caixa2.posX + 8200
			caixa2.posY =  caixa2.posY + 8800
			caixa3.posX = caixa3.posX + 8800
			caixa3.posY =  caixa3.posY + 8800
		end

	end
	--endup


	
	--pulo
	--tirar a vida e imunidade ao char
	if vida == true then 
		if vidagusnum == 4 then
			tempoatenaoimune = tempoatenaoimune - (1 * dt)
			toque = false
			if tempoatenaoimune < 0 then
				toque = true
			end
		elseif vidagusnum == 3 then
			tempoatenaoimune = tempoatenaoimune - (1 * dt)
			toque = false
			if tempoatenaoimune < 0 then
				toque = true
			end
		elseif vidagusnum == 2 then
			tempoatenaoimune = tempoatenaoimune - (1 * dt)
			toque = false
			if tempoatenaoimune < 0 then
				toque = true
			end
		elseif vidagusnum == 1 then
			tempoatenaoimune = tempoatenaoimune - (1 * dt)
			toque = false
			if tempoatenaoimune < 0 then
				toque = true
			end
		elseif vidagusnum < 0 or vidagusnum == 0 then
			vida = false
			gustavo.posX = 9999
			gustavo.posY = 9999
		end
	end
	--tirar a vida e imunidade ao char


	if stage == 1 then
		movimento_mundo(dt)
	elseif stage == 2 then
		table.remove(tirosmob1, imob1)	
		table.remove(tiros1mob1, i1mob1)	
		movimento_mundoboss(dt)
	end
end
--update

--draw
function desenho_gustavo()

	if stage == 1 then
		desenho_mundo(dt)
	elseif stage == 2 then
		desenho_mundoboss(dt)
	end

	if vida == true and toque == true then
		if gustavo.direcaoX == true and not espadatk then
			animationgus:draw(imgGustavo, gustavo.posX, gustavo.posY, 0, 1, 1, imgGustavo:getWidth(), imgGustavo:getHeight())
		end
		if gustavo.direcaoX == false and not espadatk then
			animationgusinv:draw(imgGustavoinv, gustavo.posX, gustavo.posY, 0, 1, 1, imgGustavoinv:getWidth(), imgGustavoinv:getHeight())
		end
		if gustavo.direcaoX == true and espadatk then
			love.graphics.draw(imgGustavoespadaD, gustavo.posX, gustavo.posY, 0, 1, 1, imgGustavo:getWidth(), imgGustavo:getHeight())
		end
		if gustavo.direcaoX == false and espadatk then
			love.graphics.draw(imgGustavoespadaE, gustavo.posX - 53, gustavo.posY, 0, 1, 1, imgGustavoinv:getWidth(), imgGustavoinv:getHeight())
		end
	elseif
		vida == true and toque == false then
		if gustavo.direcaoX == true and not espadatk then
			animationgusmorto:draw(imgGustavomorto, gustavo.posX, gustavo.posY, 0, 1, 1, imgGustavo:getWidth(), imgGustavo:getHeight())
		end
		if gustavo.direcaoX == false and not espadatk then
			animationgusmortoinv:draw(imgGustavomortoinv, gustavo.posX, gustavo.posY, 0, 1, 1, imgGustavoinv:getWidth(), imgGustavoinv:getHeight())
		end
		if gustavo.direcaoX == true and espadatk then
			love.graphics.draw(imgGustavoespadaDmorto, gustavo.posX, gustavo.posY, 0, 1, 1, imgGustavo:getWidth(), imgGustavo:getHeight())
		end
		if gustavo.direcaoX == false and espadatk then
			love.graphics.draw(imgGustavoespadaEmorto, gustavo.posX - 53, gustavo.posY, 0, 1, 1, imgGustavoinv:getWidth(), imgGustavoinv:getHeight())
		end
	end

end

--draw