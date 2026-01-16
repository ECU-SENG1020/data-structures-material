# 1) Basic Julia concepts
# Run: julia 1_basic_concepts.jl

println("It's me")

# In Julia you can define functions before or after you call them
# (as long as the code is executed in order). In scripts, define first.

function greet()
    println("Hello, World!")
    println("Hello again")
    # If you don't return anything, Julia returns `nothing`
end

function add(num1, num2)
    return num1 + num2
end

greet()

println(add(1, 2))

# Prints `nothing` because greet() returns nothing
println(greet())

items = [1, 2, 3]
items2 = items .* 2  # broadcast multiply each item by 2
println(items2)
