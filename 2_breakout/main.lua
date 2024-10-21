function _init()
    bricks = _create_wall()
    ball = {x=64, y=64, dx=0, dy=1}
    paddle = {x=64, y=120}
end

function _update()

end

function _draw()
    cls()
    -- rect(0, 0, 127, 127, 8)
    --_draw_bricks(bricks)
    _draw_title()
end


-- create a shit load of bricks, each one is an object with their x, y, and sprite number
-- store all the bricks in a table to make it easy to run through all of them in a for loop
-- have a function to delete a brick from the table holding all the bricks if the brick is hit
-- if a brick is hit the ball bounces off
-- can the player hit more then one brick?
-- 

-- val = mid(val, lwr, upr) -- used to keep value between lower and upper ranges

function _draw_bricks(bricks)
    for brick in all(bricks) do
        brick:draw()
    end
end

function _create_wall()
    tbl = {}
    for i=0, 7 do
        for j=0, 13 do
            add(tbl, _create_brick(2 + j*9, 2 + i*6, (i%4)+1))
        end
    end
    return tbl
end

function _create_brick(x_, y_, clr_)
    brick={
        x=x_,
        y=y_,
        clr=clr_,
        draw=function(self)
            spr(self.clr,self.x,self.y)
        end
    }
    return brick
end


function _draw_title()
    x_off = 12
    y_off = 17
    for i=0, 1 do
        for j=0, 13 do
            spr(16+j+16*i, x_off + 8*j, y_off + 8*i)
        end
    end
    print("press z to start", 30, 80, 7)
    print("created by bbread", 28, 100, 7)

end