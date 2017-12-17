function love.conf (t)
	t.identity = 1
	t.version = "0.10.1"
	t.console = false
	t.accelerometerjoystick = true
	t.externalstorage = true
	t.gammacorrect = true

	t.window.title = "Unicorns: The Game"
	t.window.icon = "data/icons/icon_game.jpg"
	t.window.width = 1024
	t.window.height = 768
	t.window.borderless = false
	t.window.resizable = false
	t.window.minwidht = 1
	t.window.minheight = false
	t.window.fullscreen = false
	t.window.fullscreentype = "exclusive"
	t.window.vsync = true
	t.window.msaa = 0
	t.window.display = 1
	t.window.highdpi = false
	t.window.x = nil
	t.window.y = nil

	t.modules.audio = true
	t.modules.event = true
	t.modules.graphics = true
	t.modules.image = true
	t.modules.joystick = true
	t.modules.keyboard = true
	t.modules.math = true
	t.modules.mouse = true
	t.modules.psysics = true
	t.modules.sound = true
	t.modules.system = true
	t.modules.timer = true
	t.modules.touch = true
	t.modules.video = true
	t.modules.window = true
	t.modules.thread = true
end