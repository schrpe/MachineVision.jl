using MachineVision
using Documenter

DocMeta.setdocmeta!(MachineVision, :DocTestSetup, :(using MachineVision); recursive=true)

makedocs(;
    modules=[MachineVision],
    authors="schrpe",
    repo="https://github.com/schrpe/MachineVision.jl/blob/{commit}{path}#{line}",
    sitename="MachineVision.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://schrpe.github.io/MachineVision.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/schrpe/MachineVision.jl",
)
