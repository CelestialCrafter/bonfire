utils.clear()
print('-> Host')
print('-> Join')

local keepUi = true

while (keepUi)
do
	local event, button, x, y = os.pullEvent('mouse_click')
	if (y == 1)
		then
			keepUi = false
			utils.clear()
			print('What should the chatroom be called?')
			local name = io.read()

			shell.run('chat host '..name)
		end

		if (y == 2)
			then
				keepUi = false
				utils.clear()
				print('What chatroom do you want to join?')
				local room = io.read()
				utils.clear()
				print('What should you be called?')
				local name = io.read()
				utils.clear()

				shell.run('chat join '..room..' '..name)
			end
end
