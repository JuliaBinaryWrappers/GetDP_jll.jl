# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule GetDP_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("GetDP")
JLLWrappers.@generate_main_file("GetDP", Base.UUID("64fe771e-770e-5521-a1a6-84a20a48b0cb"))
end  # module GetDP_jll
