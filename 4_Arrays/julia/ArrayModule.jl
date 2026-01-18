module ArrayModule

export DsArray

struct DsArray{T} <: AbstractVector{T}
    ptr::Ptr{T}
    len::Int
end

function DsArray{T}(len::Int) where T
    bytes = len * sizeof(T)
    ptr = Base.Libc.malloc(bytes)
    Base.Libc.memset(ptr, 0, bytes)
    DsArray{T}(Ptr{T}(ptr), len)
end

Base.size(A::DsArray) = (A.len,)
Base.IndexStyle(::Type{DsArray}) = IndexLinear()

Base.getindex(A::DsArray, i::Int) =
    unsafe_load(A.ptr, i)

Base.setindex!(A::DsArray, v, i::Int) =
    unsafe_store!(A.ptr, v, i)

function Base.finalize(A::DsArray)
    Base.Libc.free(A.ptr)
end

function Base.show(io::IO, A::DsArray)
    print(io, "DsArray of length $(A.len): [")
    for i in 1:A.len
        i > 1 && print(io, ", ")
        print(io, string(unsafe_load(A.ptr, i)))
    end
    print(io, "]")
end

end
