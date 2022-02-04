--[[

    LUAU plugin script which is the main frontend app. 
    
    Sends an HTTP get request to the JS server
    when the user clicks the "pull" button on the plugin UI

    @MrTher#4576

]]--

local toolbar = plugin:CreateToolbar("jojo")
local uiInit = require(script:WaitForChild('ui_init'))

local http = game:GetService('HttpService')


local jojoButton = toolbar:CreateButton("open jojo","open jojo","")

jojoButton.ClickableWhenViewportHidden = true

local function main()
	uiInit.Show()
	
	uiInit.Pull.MouseButton1Click:Connect(function()
		local res = http:GetAsync("http://localhost:8000")	
		print(res)
		
		local scr = game:FindFirstChild(uiInit.Input.Text,true)
		
		scr.Source = res
	end)
		
end

jojoButton.Click:Connect(main)
