https//fortnite
import matplotlib.pyplot as plt

x = [0, 10]  # X coordinates
y = [0, 10]  # Y coordinates

plt.plot(x, y, color='red')  # Draw the line
plt.xlim(-1, 11)
plt.ylim(-1, 11)
plt.title("Line Example")
plt.grid()
plt.show()local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

mouse.Button1Down:Connect(function()
    local bullet = -- code to create your bullet here
    bullet.CFrame = player.Character.Head.CFrame -- Align to the player’s head
end)bullet.Touched:Connect(function(hit)
    if hit:IsA("Player") then
        -- Apply damage or effects here
        hit:TakeDamage(damageAmount)
        bullet:Destroy() -- Destroy bullet after hitting
    end
end)local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local character = player.Character or player.CharacterAdded:Wait()

-- Function to create and shoot a bullet
local function shoot()
    local bullet = Instance.new("Part")
    bullet.Size = Vector3.new(0.2, 0.2, 1) -- Size of the bullet
    bullet.Color = Color3.new(1, 0, 0) -- Red color
    bullet.Position = character.Head.Position + character.Head.CFrame.LookVector * 2 -- Position in front of the character
    bullet.Anchored = false
    bullet.CanCollide = true
    bullet.Parent = workspace

    -- Add a BodyVelocity to make the bullet move
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = character.Head.CFrame.LookVector * 100 -- Speed of the bullet
    bodyVelocity.Parent = bullet

    -- Connect the Touched event to handle hits
    bullet.Touched:Connect(function(hit)
        if hit:IsA("Player") then
            -- Apply damage or effects here
            -- Example: hit:TakeDamage(10) (if you're using a damage system)
            bullet:Destroy() -- Destroy the bullet after hitting
        end
    end)

    -- Optional: Clean up the bullet after some time
    game:GetService("Debris"):AddItem(bullet, 5) -- Remove bullet after 5 seconds
end

-- Connect the mouse button click to the shoot function
mouse.Button1Down:Connect(shoot)local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local character = player.Character or player.CharacterAdded:Wait()

-- Function to create and shoot a bullet
local function shoot()
    local bullet = Instance.new("Part")
    bullet.Size = Vector3.new(0.2, 0.2, 1) -- Size of the bullet
    bullet.Color = Color3.new(1, 0, 0) -- Red color
    bullet.Position = character.Head.Position + character.Head.CFrame.LookVector * 2 -- Position in front of the character
    bullet.Anchored = false
    bullet.CanCollide = true
    bullet.Parent = workspace

    -- Add a BodyVelocity to make the bullet move
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = character.Head.CFrame.LookVector * 100 -- Speed of the bullet
    bodyVelocity.Parent = bullet

    -- Connect the Touched event to handle hits
    bullet.Touched:Connect(function(hit)
        if hit:IsA("Player") then
            -- Apply damage or effects here
            -- Example: hit:TakeDamage(10) (if you're using a damage system)
            bullet:Destroy() -- Destroy the bullet after hitting
        end
    end)

    -- Optional: Clean up the bullet after some time
    game:GetService("Debris"):AddItem(bullet, 5) -- Remove bullet after 5 seconds
end

-- Connect the mouse button click to the shoot function
mouse.Button1Down:Connect(shoot)
