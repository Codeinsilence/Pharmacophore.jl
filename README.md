# Pharmacophore.jl
Amateur pharmacophore modelling library

## Definitions
phar·ma·co·phore /ˈfärməkəˌfôr/ 
a part of a molecular structure that is responsible for a particular biological or pharmacological interaction that it undergoes.

li·gand /ˈliɡənd,ˈlīɡənd/
a molecule that binds to another (usually larger) molecule.

# About
Pharmacophore.jl is a pharmacophore modelling library written in Julia.
This library is built with a set procedure in mind:

1. Provide access to a database
The database contains desired ligands (in this case, active useful drugs)
A record should generally have:
- Molecule name
- Simplified molecular-input line-entry system (SMILES)
- Unique data (1 or many)

2. Query database for desired chemicals
3. Define weights and distributions of desired metadata to affect scoring
4. Sort queried chemicals by scoring and adjust model to reflect rank
