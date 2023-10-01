module Ligand
export Known, Candidate

# A compound with a known dissociation constant (ki)
struct Known
    name::String
    receptor_name::String
    ki_nm::Float64
    smiles::String
    Known(name, receptor_name, ki_nm, smiles) = new(name, receptor_name, ki_nm, smiles)
end

struct Candidate
    name::String
    receptor_name::String
    smiles::String
    Candidate(name, receptor_name, smiles) = new(name, receptor_name, smiles)
end

end