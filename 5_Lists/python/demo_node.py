from NodeModule import Node

node = Node("a")

# print(node.data)

# print(node)

node.next = Node("b")

node.next.next = Node("c")

# print(node.next.data)
# print(node.next.next.data)
# print(node.next.next.next)

current_node = node
count = 0
while current_node:
    print(current_node.data)
    count = count + 1
    current_node = current_node.next

print(count)

builtin_list = ["a","b","c"]
builtin_list.append("d")
print(builtin_list)

# head - first node
# find the end of the linked list of nodes
# set next property of last node = to the append(value)

print(dir(builtin_list))




