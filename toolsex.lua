task.spawn(function()
 while task.wait(10) do
collectgarbage('collect')
end
end)

		game:GetService("TeleportService").TeleportInitFailed:Connect(function(player,result,err)
    		if result == Enum.TeleportResult.GameFull then
    		end
			end)
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
      game:GetService("TeleportService").TeleportInitFailed:Connect(function(player,result,err)
    		if result == Enum.TeleportResult.GameFull then
            print("Full Nguoi hehehe")
          else 
            game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser"):InvokeServer("teleport", game.JobId)
    		end
          
			end)
    end
end)
