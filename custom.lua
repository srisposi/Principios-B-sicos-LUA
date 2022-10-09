Mod = {
    sum = function(x, y)
        return x + y
    end
}

-- Es lo mismo que hacer lo siguiente
-- function Mod.sum(x, y)
--     return x + y
-- end

function Mod.sayHello(name)
    print("Hello, " .. name )
end

return Mod