module MetalCore

using Reexport
using GPUArrays
using Adapt
using GPUCompiler
using LLVM
using LLVM.Interop

include("Metal/Metal.jl")
@reexport using .Metal

include("host/array.jl")
include("host/memory.jl")

include("context.jl")


end # module