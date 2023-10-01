#= 
Virtual Screening of Desired Binding Profiles (DBP)
=#

include("../lib/Ligand.jl")
using CSV
using DataFrames
using Main.Ligand

function main()
    csv_reader = CSV.File("./data/KiDatabase.csv")
    can_array = Vector{Ligand.Known}()
    for row in csv_reader
        if (row[:Name] == "OPIATE Mu") & (isequal(row[:SMILES], missing) == false)
            nc = Ligand.Known(row[Symbol("Ligand Name")], row[:Name], row[Symbol("ki Val")], row[:SMILES])::Known
            push!(can_array, nc)
        end
    end
    sort!(can_array, by = x -> x.ki_nm)
end

main()