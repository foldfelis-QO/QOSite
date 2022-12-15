using QOSite
using Documenter

DocMeta.setdocmeta!(QOSite, :DocTestSetup, :(using QOSite); recursive=true)

makedocs(;
    modules=[QOSite],
    authors="JingYu Ning <115336923+jrunkening@users.noreply.github.com> and contributors",
    repo="https://github.com/foldfelis-QO/QOSite.jl/blob/{commit}{path}#{line}",
    sitename="Quantum Optics Group",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://foldfelis-QO.github.io/QOSite.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/foldfelis-QO/QOSite.jl",
    devbranch="main",
)
