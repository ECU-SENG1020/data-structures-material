from TupleModule import DsTuple

my_tuple = DsTuple("a", "b", "c")
print("my_tuple = ", my_tuple)
print("length = ", len(my_tuple))
print("item[2] = ", my_tuple[2])
print("contains 'b'? ", ("b" in my_tuple))

other = DsTuple("x", "y")
print("combined = ", my_tuple + other)
print("count('b') = ", len(other))
print("index('b') = ", other.index("b"))

