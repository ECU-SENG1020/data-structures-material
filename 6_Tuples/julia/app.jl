include("TupleModule.jl")
using .TupleModule: DsTuple

my_tuple = DsTuple("a", "b", "c")
println("my_tuple = ", my_tuple)
println("length = ", length(my_tuple))
println("item[2] = ", my_tuple[2])
println("contains 'b'? ", ("b" in my_tuple))

other = DsTuple("x", "y")
println("combined = ", my_tuple + other)
println("count('b') = ", TupleModule.count(DsTuple("a", "b", "c", "b"), "b"))
println("index('b') = ", TupleModule.index(my_tuple, "b"))

