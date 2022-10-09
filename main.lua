--Unidad I: Commets
print("Hello World" .. "Lua Project")  --First Project of Lua

--Unidad II: DataTypes
--[[
    nil = Undefiend/null
    number
    string
    boolean
    tables (caso particular de los arrays)
]] 

--Unidad III: Variables
--[[
    local name = "Sergio"
    _G.Global Var = 10
    with local you can create a variable
]]

--Unidad IV: String
--[[
    local x = "Hello World"
    print(#x) muestra la cantidad de caracteres
    local str = tostring(20) Para pasar a string
    string.len(str) misma función que el #
    string.lower(str) para poner en minúscula
    string.upper(str) para poner en mayúscula
 ]]

 --Unidad V: Math
 --[[
    las operaciones básicas de cualquier lenguaje
    print(math.pi)
    print(math.min(10,5,-5))
    print(math.max(10,5,-5))
    print(math.ceil(20.1))
    print(math.floor(20.1))
    print(math.random(10, 50))
    print(math.randomseed(os.time()))
 ]]

 --Unidad VI: If Statments
 --[[
    if true then 
        print ("this was true")
    end    

    operadores de comparación: 
and 
or 
not 
> 
< 
>= 
<= 
~= (not equal)
==

    if age >= 18 then 
        print ("You may enter")
    else
        print("You are not welcome")
    end

también podemos trabajar con: elseif para 
agregar una nueva condición

ternario en Lua
local age = 19
local name = age > 18 and "Mike" or "Jeff"
print(name)
]]

--Unidad VII: Loops
 --[[
En Lua tenemos 3 loops

1.for
for i = 1, 10, 2 do
    print i
end

2.while
local count = 0
while true do
    count = count + 1
    print("mike") 
end

3.repeat-until
local count = 10
repeat
    count = count + 1
    print("mike")
until count < 10
]]

--Unidad VIII: User Input
 --[[
    print("What is your name?")
    local ans = io.read()
    print("Name:", ans)

Si lo queremos escribir en una sola linea podemos hacerlo de la siguiente manera

    io.write("Enter your name: " )
    local ans = io. read()
    print ("Name: " ans)
 ]]

 --Unidad IX: Tables
 --[[
1. Create Table
local tbl = {"This", 2 , 9.9, true, {"ok", "cool"}} // ppuede contener cualquier tipo de dato
for i = 1, #tbl do
    print(tbl[i]) 
end    

2. Obejtivo de las tablas

3. Propiedades de las tablas

a. table.insert(nombre de la tabla, position donde se inserta, lo que quremos insertar)
b. table.remove(nombre de la tabla, position de lo que queremos remover)

c. local nums = {1, 3, 5, 7, 9}
for index, value in pairs(nums) do
    print(index, value)
end

local nums = {
    {1, 8, 3},
    {4, 8, 3},
    {1, 8, 3},
}

print(nums[1][1])

A tener en cuenta que las tablas no empiezan en 0 sino en 1.

example for table inside de table inside the table
local nums = {
    {
        {2, 4, 5},
        {2, 4, 5},
        {2, 4, 5},
    },
    {4, 2, 6},
    {7, 5, 9},
} 
print(nums[x][y][z])

si vamos a crear una tabla dentro de otra, que por lo menos esa tabla tenga más de dos elementos
si no no tiene sentido complejizar tanto la aplicación.

d. table.concat(nums, "")

4. Diccionario u objectos
local tbl = {
    name = "Mike"
    age = 12
}

print(tbl["name"])
]]

 --Unidad X: Functions
--[[
local function sayHello(name)
    local name = name or "Jack"
    print("Hello! " .. name .. "!")
end

sayHello("pepe")

local function sum(num1, num2)
    local result = num1 + num2
    return result
end
local x = 20
local ans = sum(10, x)
print("The answer is: " .. ans)
]]

 --Unidad XI: Workin with files
 --[[
1. Create a file
io.output("myfile.txt")
io.write("Hello World")
io.close()

2.Leer archivo
io.input("myFile.txt")    
local fileData = io.read("*all")
print(fileData)
io.close()

3. Abrir archivo y ejecutar una acción
local file = io.open("myfile.txt", "w")
if file ~= nil then
    file:write("Hello there!")
    file:close()
else 
    print("Could not open the file")    
end    

Algunas proiedades para manejar los archivos
w: write
a: append
r: read

]]

--Unidad XII: Custom Modules
--[[
    package is a collection of modules
    excamples:

    local mod = require("custom")
    print(mod.sum(10,5))
    mod.sayHello("Mike")
]]

--Unidad XIII: OOP
--[[
    local function Pet(name)
        age = 10
        return {
            name = name or "Charlie",
            daysAlive = age * 365,
            status = "hungry"

            speak = function()
                print("Meaw")
            end,

            feed = function(self)
                print("eating", self.name)
                self:speak()
            end
        }
    end   

    local cat = Pet()
    local dog = Pet("Jack")

    print(cat.age)
    print(dog.daysAlive)

    cat.speak()
    dog:feed() //tener en cuenta que cuando usamos la palabra reservada de self
esta tiene el scope limitado al objeto creado y por lo tanto para acceder a él no lo llamaremos
con la nomenclatura del punto sino que utilizaremos : como hacemos en dog.

Siempre se recomienda trabajar con self y colon.

local function Dog(name)
    return {
        name name or "Charlie",
        breed = "doberman",
        loyalty = 0,
        status = "hungry"

        speak = function(self)
            print("Meaw")
        end,

        feed = function (self)
            print("eating", self.name)
            self:speak(
        end
    }
end

local doberman = Dog("Jesse")
print(doberman.name, doberman.breed)

Para evitar copiar y pegar cuando un objeto hijo tiene un padre, existe la propiedad de las funciones llamada
Herencia
De esta manera la clase dog anterior la podemos reescribir de la siguiente forma

local function Dog(name)
    local dog = Pet(name)

    dog.breed = "doberman"
    dog.loyalty = 0

    también podemos hacer sobre escritura de funciones (override)
    dog.speak = function(self)
        print("Woof")
    end

    return dog
end

local function Cat(name)
    local cat = Dog(name, "idk")
    
    cat.lazy = true

    return cat

]]

-- Unidad XIV: Love2DBasic - Setup and LUD basics
--[[
    Love2D es el framework basico de lua para realizar juegos
]]