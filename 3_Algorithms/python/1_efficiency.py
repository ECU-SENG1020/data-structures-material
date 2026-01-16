import time

# Algorithm 1
def get_even_numbers_version_one(from_num=2, to_num=100):
    number = from_num
    even_numbers = []
    while number <= to_num:
        # check to see if number is even
        if number % 2 == 0:
            even_numbers.append(number)
    
        # increase number by 1
        number += 1
    return even_numbers


#Algorithm 2
def get_even_numbers_version_two(from_num=2, to_num=100):
    number = from_num
    even_numbers = []
    while number <= to_num:
        # check to see if number is even
        if number % 2 == 0:
            even_numbers.append(number)
        
        # increase number by 2
        number += 2
    return even_numbers


result1 = get_even_numbers_version_one(from_num=2,to_num=100)
print(result1)

result2 = get_even_numbers_version_two(from_num=2,to_num=100)
print(result2)

start_time = time.perf_counter_ns()
result1 = get_even_numbers_version_one()
end_time = time.perf_counter_ns()
elapsed_time = end_time - start_time
print(f"Algorithm 1 took {elapsed_time} nanoseconds.")

start_time = time.perf_counter_ns()
result2 = get_even_numbers_version_two()
end_time = time.perf_counter_ns()
elapsed_time = end_time - start_time
print(f"Algorithm 2 took {elapsed_time} nanoseconds.")
