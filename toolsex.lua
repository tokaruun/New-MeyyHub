local TeleportService = game:GetService("TeleportService")

TeleportService.TeleportInitFailed:Connect(function(player, result, err)
    if result == Enum.TeleportResult.GameFull then
        print("Full người hehehe")
    else
        game:GetService("ReplicatedStorage")
            :WaitForChild("__ServerBrowser")
            :InvokeServer("teleport", game.JobId)
    end
end)
