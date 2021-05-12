using ModuleTemplate
using Documenter

DocMeta.setdocmeta!(ModuleTemplate, :DocTestSetup, :(using ModuleTemplate); recursive=true)

makedocs(;
    modules=[ModuleTemplate],
    authors="schrpe",
    repo="https://github.com/schrpe/ModuleTemplate.jl/blob/{commit}{path}#{line}",
    sitename="ModuleTemplate.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://schrpe.github.io/ModuleTemplate.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/schrpe/ModuleTemplate.jl",
)
