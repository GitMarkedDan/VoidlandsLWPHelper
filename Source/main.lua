function love.load()
    paused = false
    r = 0
    rect = love.graphics.newImage("voidtemp.png")
    w = rect:getWidth()/2
    h = rect:getHeight()/2
    love.window.setMode( 800, 800, {resizable=true})
    canvas = love.graphics.newCanvas(800,800)
    b = 0
    warn = 0.75
end
function love.update(dt)
    if not paused then
        r = (r + 1 * dt)
    end
end
function love.keypressed(key, scancode, isrepeat)
    if not isrepeat then
        if key == "l" then
            r = 0
        elseif key == "o" then
            love.timer.sleep(0.3)
            r = 0
        elseif key == "p" or key == "`" then
            paused = not paused
        elseif key == "up" then
            warn = warn + 0.05
        elseif key == "down" then
            warn = warn - 0.05
        end
    end
end

function doRect(posX, posY, rate, isDouble)
    local rot = r * rate
    if rot % math.pi > math.rad(159.8) or (rot % math.pi < math.rad(isDouble and 70.2 or 20.2)) then
        love.graphics.setColor(1,0,0)
    elseif rot % math.pi > math.rad(159.8) - warn then
        love.graphics.setColor(1,0.5,0)
    else
        love.graphics.setColor(0.5,0,1)
    end
    love.graphics.draw(rect, posX, posY, rot, (b/800)*0.18, (b/800)*0.18, w, h)
    if isDouble then
        love.graphics.draw(rect, posX, posY, rot - math.rad(50), (b/800)*0.18, (b/800)*0.18, w, h)
    end
    love.graphics.setColor(1,1,1)
    love.graphics.circle("fill", posX, posY + (b/800)*75, (b/800)*11.5)
end

function love.draw()
    local sw,sh = love.graphics.getDimensions()
    b = sw > sh and sh or sw
    --top row

    if love.keyboard.isDown("l") then love.graphics.print("L IS DOWN") end
    if love.keyboard.isDown("left") then r = r - 0.01 end
    if love.keyboard.isDown("right") then r = r + 0.01 end
    if love.keyboard.isDown("a") then r = r - 0.1 end
    if love.keyboard.isDown("d") then r = r + 0.1 end
    if love.keyboard.isDown("s") then warn = warn - 0.05 end
    if love.keyboard.isDown("w") then warn = warn + 0.05 end
    warn = warn % 2
    love.graphics.print(r % (math.pi*4))
    love.graphics.print("Seconds till best 4>5 cross: " .. tostring(((r - 11.04) % -(math.pi*4))*-1), 3*sw/7, 2*sh/3)
    love.graphics.print("Warn is " .. tostring(warn), sw/4, 2*sh/3)
    doRect(sw/3, sh/6, 15/20)
    doRect(2*sw/3, sh/6, 20/20)
    doRect(sw/6, sh/2, 15/20, true)
    doRect(sw/2, sh/2, 20/20, true)
    doRect(5*sw/6, sh/2, 25/20, true)
    --circles
end