anim = require "anim8"
require "gustavo"
require "balas"
require "mob1"
require "colisao"
require "boss1"
require "balasmob1"
require "mundo"
require "mundoboss"
larguraTela = love.graphics.getWidth()
alturaTela = love.graphics.getHeight() - 128
stage = 1
qntinimigos1 = 0
qntinimigos2 = 0

function love.load()
	music = love.audio.newSource("data/audio/main.mp3")
	music:setVolume(0.5)
	music:play()
	--
	love.mouse.setVisible(false)

	--tiros
	imagem_tiro()
	--tiros

	--gustavo
	imagem_gustavo()
	--gustavo

	--mob
	imagem_mob1()
	--mob

	--boss1
	imagem_boss1()
	--boss1
end



function love.update(dt)

	--tiros
	--tiros

	--gustavo
	movimento_gustavo(dt)
	--gustavo

	--mob1
	movimento_mob1(dt)
	--mob1

	--boss1
	movimento_boss1(dt)
	--boss1

	--sistema de colisao
	colisoes(dt)
	--sistema de colisao


end

function love.draw()
	--background
	love.graphics.draw(background, larguraTela, alturaTela, 0, 1, 1, background:getWidth(), background:getHeight())
	--background

	love.graphics.setBackgroundColor(200, 20, 255)
	--tiros
	--tiros

	--gustavo
	desenho_gustavo()
	--gustavo

	--mob1
	desenho_mob1()
	--mob1

	--boss1
	desenho_boss1()
	--boss1


	if estatistica == true then
		love.graphics.print("velocidadeposY: " .. gustavo.velocidadeposY, 0, 480)
		love.graphics.print("posY: " .. gustavo.posY, 0, 500)
		love.graphics.print("ground: " .. gustavo.ground, 0, 520)
		if emobj == true then
			love.graphics.print("emobj: true", 0, 540)
		else
			love.graphics.print("emobj: false", 0, 540)
		end
		if inair == true then
			love.graphics.print("inair: true", 250, 480)
		else
			love.graphics.print("inair: false", 250, 480)
		end
		love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 250, 500)
		if gustavo.posY == gustavo.ground then
			love.graphics.print("inground: true", 250, 520)
		else
			love.graphics.print("inground: false", 250, 520)
		end
		love.graphics.print("vidagus: " .. vidagusnum, 250, 540)
		love.graphics.print("tempoimune: " .. tempoatenaoimune, 350, 480)
		love.graphics.print("qntinimigos: ".. qntinimigos, 350, 500)
		love.graphics.print("qntinimigos1: ".. qntinimigos1, 350, 520)
		love.graphics.print("stage: ".. stage, 350, 540)
	end

	love.graphics.print("Setas do teclado (Left, Right, Up & Down) = Movimenta o personagem.", 350, 700)
	love.graphics.print("Z = Atira, X = Usa espada, C = Corre, Espaço = Pula, R = Revive", 350, 720)
end