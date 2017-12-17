
function imagem_mundo ( ... )

	qntinimigos = 1
	seta = love.graphics.newImage ("data/mundo/Object/Sign_2.png")
	imgarvore1 = love.graphics.newImage ("data/mundo/Object/Tree_3.png")
	imgarvore2 = love.graphics.newImage("data/mundo/Object/Tree_2.png")
	background = love.graphics.newImage ("data/mundo/BG/BG.png")
	chao1 = love.graphics.newImage ("data/mundo/Tiles/2.png")
	imgCaixa1 = love.graphics.newImage ("data/mundo/Object/Crate.png")
	imgCaixa2 = love.graphics.newImage ("data/mundo/Object/Crate.png")
	imgCaixa3 = love.graphics.newImage ("data/mundo/Object/Crate.png")
	caixa1 = {
		posX = larguraTela - 500,
		posY = alturaTela 
	}
	caixa2 = {
		posX = larguraTela - 9000,
		posY = alturaTela - 9000
	}
	caixa3 = {		
		posX = larguraTela - 9000,
		posY = alturaTela - 9000
	}

	arvore1 = {
		posX = larguraTela - 700,
		posY = alturaTela
	}
	arvore2 = {
		posX = larguraTela - 100,
		posY = alturaTela
	}
end

function movimento_mundo(dt)

end

function desenho_mundo( ... )

	--chao
	love.graphics.draw(chao1, larguraTela, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 128, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 256, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 384, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 512, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 640, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 768, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	love.graphics.draw(chao1, larguraTela - 896, alturaTela + 128, 0, 1, 1, chao1:getWidth(), chao1:getHeight())
	--chao
	if vidaboss1torsonum < 0 and vidaboss1costanum < 0 then 
		love.graphics.print("Chefe derrotado, vitória!", 0, 700)
	else
		love.graphics.print("Pontos: " .. pontos, 0, 700)
	end
	--arvore
	love.graphics.draw(imgarvore1, arvore1.posX, arvore1.posY, 0, 1, 1, imgarvore1:getWidth(), imgarvore1:getHeight())
	love.graphics.draw(imgarvore2, arvore2.posX, arvore2.posY, 0, 1, 1, imgarvore2:getWidth(), imgarvore2:getHeight())
	--arvore
	if qntinimigos == 0 then
		love.graphics.draw(seta, larguraTela, alturaTela, 0, 1, 1, seta:getWidth(), seta:getHeight())
	end




	love.graphics.draw(imgCaixa1, caixa1.posX, caixa1.posY, 0, 1, 1, imgCaixa1:getWidth(), imgCaixa1:getHeight())
end