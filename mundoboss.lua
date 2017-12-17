	
function movimento_mundoboss(dt)
	movimento_tiro(dt)
	if boss1.direcaoX == false and vidaboss1 then
		if boss1.posX > (-400 + imgBoss1inv:getWidth()) then
			boss1.posX = boss1.posX - boss1.velocidade * dt 
			elseif boss1.posX < (-400 + imgBoss1inv:getWidth()) then
				boss1.direcaoX = true
				animationboss1:update(dt)
				animationboss1inv:update(dt)
			end
	
	end
	if boss1.direcaoX == true and vidaboss1 then
		if boss1.posX ~= (1 + imgBoss1inv:getWidth()) then
			boss1.posX = boss1.posX + boss1.velocidade * dt
			if boss1.posX > (1000 + imgBoss1inv:getWidth()) then
				boss1.direcaoX = false
				animationboss1inv:update(dt)
				animationboss1:update(dt)
			end
		end
	end
end

function desenho_mundoboss( ... )

	love.graphics.draw(imgarvore1, arvore1.posX + 100, arvore1.posY, 0, 1, 1, imgarvore1:getWidth(), imgarvore1:getHeight())
	love.graphics.draw(imgarvore2, arvore2.posX - 200, arvore2.posY, 0, 1, 1, imgarvore2:getWidth(), imgarvore2:getHeight())
	love.graphics.draw(imgarvore1, arvore1.posX + 850, arvore1.posY, 0, 1, 1, imgarvore1:getWidth(), imgarvore1:getHeight())
	love.graphics.draw(imgarvore2, arvore2.posX - 800, arvore2.posY, 0, 1, 1, imgarvore2:getWidth(), imgarvore2:getHeight())
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
		love.graphics.print("Vida do boss frente: ".. vidaboss1torsonum, 0, 720)
		love.graphics.print("Vida do boss costas: ".. vidaboss1costanum, 0, 740)
	end
	desenho_tiro()

	love.graphics.draw(imgCaixa1, caixa1.posX, caixa1.posY, 0, 1, 1, imgCaixa1:getWidth(), imgCaixa1:getHeight())
	love.graphics.draw(imgCaixa2, caixa2.posX, caixa2.posY, 0, 1, 1, imgCaixa2:getWidth(), imgCaixa2:getHeight())
	love.graphics.draw(imgCaixa3, caixa3.posX, caixa3.posY, 0, 1, 1, imgCaixa2:getWidth(), imgCaixa2:getHeight())
end