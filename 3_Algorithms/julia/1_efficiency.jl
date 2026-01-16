# 1) Efficiency (compare two algorithms)
# Run: julia 1_efficiency.jl

"""Algorithm 1: check every number."""
function get_even_numbers_version_one(; from_num::Int=2, to_num::Int=100)
    number = from_num
    even_numbers = Int[]

    while number <= to_num
        if number % 2 == 0
            push!(even_numbers, number)
        end
        number += 1
    end

    return even_numbers
end

"""Algorithm 2: jump by 2 each time."""
function get_even_numbers_version_two(; from_num::Int=2, to_num::Int=100)
    number = from_num
    even_numbers = Int[]

    while number <= to_num
        if number % 2 == 0
            push!(even_numbers, number)
        end
        number += 2
    end

    return even_numbers
end

function main()
    result1 = get_even_numbers_version_one(from_num=2, to_num=100)
    println(result1)

    result2 = get_even_numbers_version_two(from_num=2, to_num=100)
    println(result2)

    start_time = time_ns()
    _ = get_even_numbers_version_one()
    elapsed_time = time_ns() - start_time
    println("Algorithm 1 took $(elapsed_time) nanoseconds.")

    start_time = time_ns()
    _ = get_even_numbers_version_two()
    elapsed_time = time_ns() - start_time
    println("Algorithm 2 took $(elapsed_time) nanoseconds.")
end

if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
