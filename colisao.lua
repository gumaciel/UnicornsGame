function colisoes(dt)


	--colisao da bala com o inimigo
	for i, tiro in ipairs(tiros) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro.x, tiro.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros, i)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i1, tiro1 in ipairs(tiros1) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro1.x, tiro1.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros1, i1)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i2, tiro2 in ipairs(tiros2) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro2.x, tiro2.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros2, i2)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i3, tiro3 in ipairs(tiros3) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro3.x, tiro3.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros3, i3)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i4, tiro4 in ipairs(tiros4) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro4.x, tiro4.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros4, i4)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i5, tiro5 in ipairs(tiros5) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro5.x, tiro5.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros5, i5)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i6, tiro6 in ipairs(tiros6) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro6.x, tiro6.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros6, i6)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	for i7, tiro7 in ipairs(tiros7) do
		if checaColisaobalamob1(mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), tiro7.x, tiro7.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and vidamob1 == true then
			table.remove(tiros7, i7)
			vidamob1num = vidamob1num - gustavo.danotiromob1
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	--endup

	--colisao do personagem com o inimigo
	if checaColisaogustavomob1 (mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), gustavo.posX - (imgGustavo:getWidth()/2), gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight()) and vida == true and toque == true then
		vidagusnum = vidagusnum - 1
		tempoatenaoimune = tempoimune
		gustavo.posX = larguraTela / 2
		gustavo.posY = alturaTela
		pontos = pontos - 2
	end 
	if checaColisaogustavoboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavo:getWidth()/2), gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight()) and vida == true and toque == true and boss1.direcaoX == false then
		vidagusnum = vidagusnum - 1
		tempoatenaoimune = tempoimune
		gustavo.posX = larguraTela / 2
		gustavo.posY = alturaTela
		pontos = pontos - 2
	end	
	if checaColisaogustavoboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavo:getWidth()/2), gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight()) and vida == true and toque == true and boss1.direcaoX == true then
		vidagusnum = vidagusnum - 1
		tempoatenaoimune = tempoimune
		gustavo.posX = larguraTela / 2
		gustavo.posY = alturaTela
		pontos = pontos - 2
	end
	if checaColisaogustavoboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavo:getWidth()/2), gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight()) and vida == true and toque == true and boss1.direcaoX == false then
		vidagusnum = vidagusnum - 1
		tempoatenaoimune = tempoimune
		gustavo.posX = larguraTela / 2
		gustavo.posY = alturaTela
		pontos = pontos - 2
	end	
	if checaColisaogustavoboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavo:getWidth()/2), gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight()) and vida == true and toque == true and boss1.direcaoX == true then
		vidagusnum = vidagusnum - 1
		tempoatenaoimune = tempoimune
		gustavo.posX = larguraTela / 2
		gustavo.posY = alturaTela
		pontos = pontos - 2
	end	


	--end up

	--colisao espada boss
	--lado esquerdo
	--frente
	if gustavo.direcaoX == true and espadatk then
		if checaColisaoespadaDboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaD:getWidth()/2), gustavo.posY, imgGustavoespadaD:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == false then
			vidaboss1torsonum = vidaboss1torsonum - (gustavo.danoespadaboss1 * dt)
		end
	end
	if gustavo.direcaoX == false and espadatk then
		if checaColisaoespadaEboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaE:getWidth()/2), gustavo.posY, imgGustavoespadaE:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == false then
			vidaboss1torsonum = vidaboss1torsonum - (gustavo.danoespadaboss1 * dt)
		end
	end	
	--espadamob
	if gustavo.direcaoX == true and espadatk then
		if checaColisaoespadaDmob1 (mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), gustavo.posX - (imgGustavoespadaD:getWidth()/2), gustavo.posY, imgGustavoespadaD:getWidth(), imgGustavo:getHeight()) and vida == true then
			vidamob1num = vidamob1num - (gustavo.danoespadamob1 * dt)
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	if gustavo.direcaoX == false and espadatk then
		if checaColisaoespadaEmob1 (mob1.posX, mob1.posY, imgMob1:getWidth(), imgMob1:getHeight(), gustavo.posX - (imgGustavoespadaE:getWidth()/2), gustavo.posY, imgGustavoespadaE:getWidth(), imgGustavo:getHeight()) and vida == true then
			vidamob1num = vidamob1num - (gustavo.danoespadamob1 * dt)
			if vidamob1num < 0 then
				vidamob1 = false
				mob1.posX = 9999
				mob1.posY = 9999
				pontos = pontos + 1
				qntinimigos = qntinimigos - 1
			end
		end
	end
	--espadamob
	--endup
	--costa
	if gustavo.direcaoX == true and espadatk then
		if checaColisaoespadaDboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaD:getWidth()/2), gustavo.posY, imgGustavoespadaD:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == false then
			vidaboss1costanum = vidaboss1costanum - (gustavo.danoespadaboss1 * dt)
		end
	end
	if gustavo.direcaoX == false and espadatk then
		if checaColisaoespadaEboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaE:getWidth()/2), gustavo.posY, imgGustavoespadaE:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == false then
			vidaboss1costanum = vidaboss1costanum - (gustavo.danoespadaboss1 * dt)
		end
	end	
	--endup
	--endup
	--lado direito
	--frente
	if gustavo.direcaoX == true and espadatk then
		if checaColisaoespadaDboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaD:getWidth()/2), gustavo.posY, imgGustavoespadaD:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == true then
			vidaboss1torsonum = vidaboss1torsonum - (gustavo.danoespadaboss1 * dt)
		end
	end
	if gustavo.direcaoX == false and espadatk then
		if checaColisaoespadaEboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaE:getWidth()/2), gustavo.posY, imgGustavoespadaE:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == true then
			vidaboss1torsonum = vidaboss1torsonum - (gustavo.danoespadaboss1 * dt)
		end
	end
	--endup
	--costa
	if gustavo.direcaoX == true and espadatk then
		if checaColisaoespadaDboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaD:getWidth()/2), gustavo.posY, imgGustavoespadaD:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == true then
			vidaboss1costanum = vidaboss1costanum - (gustavo.danoespadaboss1 * dt)
		end
	end
	if gustavo.direcaoX == false and espadatk then
		if checaColisaoespadaEboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), gustavo.posX - (imgGustavoespadaE:getWidth()/2), gustavo.posY, imgGustavoespadaE:getWidth(), imgGustavo:getHeight()) and vida == true and boss1.direcaoX == true then
			vidaboss1costanum = vidaboss1costanum - (gustavo.danoespadaboss1 * dt)
		end
	end
	--endup
	--endup

	--colisao bala com boss
	--costa
	for i, tiro in ipairs(tiros) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro.x, tiro.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros, i)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i, tiro in ipairs(tiros) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro.x, tiro.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros, i)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i1, tiro1 in ipairs(tiros1) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro1.x, tiro1.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros1, i1)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i1, tiro1 in ipairs(tiros1) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro1.x, tiro1.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros1, i1)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i2, tiro2 in ipairs(tiros2) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro2.x, tiro2.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros2, i2)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i2, tiro2 in ipairs(tiros2) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro2.x, tiro2.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros2, i2)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i3, tiro3 in ipairs(tiros3) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro3.x, tiro3.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros3, i3)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i3, tiro3 in ipairs(tiros3) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro3.x, tiro3.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros3, i3)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i4, tiro4 in ipairs(tiros4) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro4.x, tiro4.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros4, i4)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i4, tiro4 in ipairs(tiros4) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro4.x, tiro4.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros4, i4)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i5, tiro5 in ipairs(tiros5) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro5.x, tiro5.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros5, i5)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i5, tiro5 in ipairs(tiros5) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro5.x, tiro5.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros5, i5)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i6, tiro6 in ipairs(tiros6) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro6.x, tiro6.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros6, i6)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i6, tiro6 in ipairs(tiros6) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro6.x, tiro6.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros6, i6)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i7, tiro7 in ipairs(tiros7) do
		if checaColisaobalaboss1costaXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro7.x, tiro7.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros7, i7)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	for i7, tiro7 in ipairs(tiros7) do
		if checaColisaobalaboss1costaXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro7.x, tiro7.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros7, i7)
			vidaboss1costanum = vidaboss1costanum - gustavo.danotiroboss1
		end
	end
	--endup
	--torso
	for i, tiro in ipairs(tiros) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro.x, tiro.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros, i)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i, tiro in ipairs(tiros) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro.x, tiro.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros, i)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i1, tiro1 in ipairs(tiros1) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro1.x, tiro1.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros1, i1)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i1, tiro1 in ipairs(tiros1) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro1.x, tiro1.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros1, i1)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i2, tiro2 in ipairs(tiros2) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro2.x, tiro2.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros2, i2)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i2, tiro2 in ipairs(tiros2) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro2.x, tiro2.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros2, i2)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i3, tiro3 in ipairs(tiros3) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro3.x, tiro3.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros3, i3)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i3, tiro3 in ipairs(tiros3) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro3.x, tiro3.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros3, i3)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i4, tiro4 in ipairs(tiros4) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro4.x, tiro4.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros4, i4)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i4, tiro4 in ipairs(tiros4) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro4.x, tiro4.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros4, i4)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i5, tiro5 in ipairs(tiros5) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro5.x, tiro5.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros5, i5)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i5, tiro5 in ipairs(tiros5) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro5.x, tiro5.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros5, i5)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i6, tiro6 in ipairs(tiros6) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro6.x, tiro6.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros6, i6)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i6, tiro6 in ipairs(tiros6) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro6.x, tiro6.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros6, i6)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i7, tiro7 in ipairs(tiros7) do
		if checaColisaobalaboss1torsoXF (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro7.x, tiro7.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == false then
			table.remove(tiros7, i7)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	for i7, tiro7 in ipairs(tiros7) do
		if checaColisaobalaboss1torsoXT (boss1.posX, boss1.posY, imgBoss1:getWidth(), imgBoss1:getHeight(), tiro7.x, tiro7.y, imgTiro:getWidth()/2, imgTiro:getHeight()) and boss1.direcaoX == true then
			table.remove(tiros7, i7)
			vidaboss1torsonum = vidaboss1torsonum - gustavo.danotiroboss1
		end
	end
	--torso
	--endup
	--endup	
	--colisaobalamob1personagem
	for imob1, tiromob1 in ipairs(tirosmob1) do
		if checaColisaobalamob1personagem (gustavo.posX, gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight(), tiromob1.x, tiromob1.y, imgTiromob1:getWidth()/2, imgTiromob1:getHeight()) and toque == true then
			table.remove(tirosmob1, imob1)		
			vidagusnum = vidagusnum - 1
			tempoatenaoimune = tempoimune
			gustavo.posX = larguraTela / 2
			gustavo.posY = alturaTela
			pontos = pontos - 2
		end
	end
	for i1mob1, tiro1mob1 in ipairs(tiros1mob1) do
		if checaColisaobalamob1personagem (gustavo.posX, gustavo.posY, imgGustavo:getWidth(), imgGustavo:getHeight(), tiro1mob1.x, tiro1mob1.y, imgTiromob1:getWidth()/2, imgTiromob1:getHeight()) and toque == true then
			table.remove(tiros1mob1, i1mob1)		
			vidagusnum = vidagusnum - 1
			tempoatenaoimune = tempoimune
			gustavo.posX = larguraTela / 2
			gustavo.posY = alturaTela
			pontos = pontos - 2
		end
	end
	--endup

	if vida == false and love.keyboard.isDown("r") then	
		tiros = {}
		atira = tempoAteAtirar
		pontos = 0 
		vida = true
		vidagusnum = 5
		direcaoX = true
		vidamob1 = true
		vidamob1num = 100
		vidaboss1torsonum = 100
		vidaboss1costanum = 100
		mob1.posX = larguraTela
		mob1.posY = alturaTela
		boss1.posX = larguraTela + 2000
		boss1.posY = alturaTela
		gustavo.posX = larguraTela / 2
		gustavo.posY = alturaTela
		stage = 1
		qntinimigos = 1
		caixa2.posX = larguraTela - 9000
		caixa2.posY = alturaTela - 9000
		caixa3.posX = larguraTela - 9000
		caixa3.posY = alturaTela - 9000


	end
end


function checaColisaogustavocaixa1direita (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 + 220) < x2 + w2 and x2 < x1 + (w1) and (y1 + 100) < y2 + (h2) and (y2 - 87) < y1 + (h1)
end

function checaColisaogustavocaixa1esquerda (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 + 240) < x2 + w2 and x2 < (x1 + 45) + (w1) and (y1 + 100) < y2 + (h2) and (y2 - 87) < y1 + (h1)
end

function checaColisaogustavocaixa1direitaDOUBLE (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 + 220) < x2 + w2 and x2 < x1 + (w1 - 85) and (y1 + 100) < y2 + (h2) and (y2 - 87) < y1 + (h1)
end
function checaColisaogustavocaixa1esquerdaDOUBLE (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 + 360) < x2 + w2 and x2 < (x1 + 45) + (w1) and (y1 + 100) < y2 + (h2) and (y2 - 87) < y1 + (h1)
end

function checaColisaogustavocaixa1pulo (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 + 240) < x2 + w2 and x2 < (x1 + 25) + (w1) and (y1 + 97) < y2 + (h2) and y2  < y1 + (h1)
end
function checaColisaogustavocaixa1baixo (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 + 240) < x2 + w2 and x2 < (x1 + 25) + (w1) and (y1 + 120) < y2 + (h2) and (y2 - 100) < y1 + (h1)
end

function checaColisaobalamob1personagem (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 220) < x2 + w2 and x2 < (x1 - 420) + w1 and (y1 - 85) < y2 + h2 and (y2 + 150) < y1 + h1
end

function checaColisaoespadaDboss1torsoXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1580) < x2 + w2 and x2 < (x1 - 3090) + w1 and (y1 - 100) < y2 + h2 and (y2 + 110) < y1 + h1
end
function checaColisaoespadaEboss1torsoXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1400) < x2 + w2 and x2 < (x1 - 2950) + w1 and (y1 - 100) < y2 + h2 and (y2 + 110) < y1 + h1
end

function checaColisaoespadaDboss1torsoXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1400) < x2 + w2 and x2 < (x1 - 3000) + w1 and (y1 - 100) < y2 + h2 and (y2 + 110) < y1 + h1
end
function checaColisaoespadaEboss1torsoXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1880) < x2 + w2 and x2 < (x1 - 2800) + w1 and (y1 - 100) < y2 + h2 and (y2 + 110) < y1 + h1
end



function checaColisaoespadaDboss1costaXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1280) < x2 + w2 and x2 < (x1 - 2890) + w1 and (y1 + 40) < y2 + h2 and (y2 + 110) < y1 + h1
end
function checaColisaoespadaEboss1costaXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1200) < x2 + w2 and x2 < (x1 - 2800) + w1 and (y1 + 40) < y2 + h2 and (y2 + 110) < y1 + h1
end

function checaColisaoespadaDboss1costaXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1550) < x2 + w2 and x2 < (x1 - 3200) + w1 and (y1 + 40) < y2 + h2 and (y2 + 110) < y1 + h1
end
function checaColisaoespadaEboss1costaXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1450) < x2 + w2 and x2 < (x1 - 3100) + w1 and (y1 + 40) < y2 + h2 and (y2 + 110) < y1 + h1
end




function checaColisaobalaboss1torsoXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1720) < x2 + w2 and x2 < (x1 - 3150) + w1 and (y1 - 200) < y2 + h2 and (y2 + 110) < y1 + h1
end
function checaColisaobalaboss1torsoXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1600) < x2 + w2 and x2 < (x1 - 3050) + w1 and (y1 - 200) < y2 + h2 and (y2 + 110) < y1 + h1
end

function checaColisaobalaboss1costaXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1400) < x2 + w2 and x2 < (x1 - 3050) + w1 and (y1 - 150) < y2 + h2 and (y2 + 110) < y1 + h1
end
function checaColisaobalaboss1costaXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 1725) < x2 + w2 and x2 < (x1 - 3300) + w1 and (y1 - 150) < y2 + h2 and (y2 + 110) < y1 + h1
end


function checaColisaobalamob1 (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 270) < x2 + w2 and x2 < (x1 - 540) + w1 and (y1 - 85) < y2 + h2 and (y2 + 110) < y1 + h1
end

function checaColisaoespadaDmob1 (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 140) < x2 + w2 and x2 < (x1 - 350) + w1 and (y1 - 85) < y2 + h2 and (y2 + 110) < y1 + h1
end

function checaColisaoespadaEmob1 (x1, y1, w1, h1, x2, y2, w2, h2)
	return (x1 - 50) < x2 + w2 and x2 < (x1 - 290) + w1 and (y1 - 85) < y2 + h2 and (y2 + 110) < y1 + h1
end



function checaColisaogustavomob1 (x1, y1, w1, h1, x2, y2, w2, h2)
	return x1 < x2 + w2 and x2 < x1 + (w1 - 410) and y1 < y2 + (h2 - 55) and y2 < y1 + (h1 + 50)
end
function checaColisaogustavoboss1torsoXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return x1 < x2 + (w2 + 1440) and x2 < x1 + (w1 - 3100) and y1 < y2 + (h2 + 100) and y2 < y1 + (h1 + 50)
end
function checaColisaogustavoboss1torsoXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return x1 < x2 + (w2 + 1300) and x2 < x1 + (w1 - 2950) and y1 < y2 + (h2 + 100) and y2 < y1 + (h1 + 50)
end
function checaColisaogustavoboss1costaXF (x1, y1, w1, h1, x2, y2, w2, h2)
	return x1 < x2 + (w2 + 1440) and x2 < x1 + (w1 - 2950) and y1 < y2 + (h2 - 50) and y2 < y1 + (h1 + 50)
end
function checaColisaogustavoboss1costaXT (x1, y1, w1, h1, x2, y2, w2, h2)
	return x1 < x2 + (w2 + 1440) and x2 < x1 + (w1 - 3100) and y1 < y2 + (h2 - 50) and y2 < y1 + (h1 + 50)
end
