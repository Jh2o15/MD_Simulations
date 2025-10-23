# Molecular Dynamics Simulations
Quick tutorial on how to start on molecular dynamics

Packmole is a software that help us to set up the initial configurations of our system. 
You need pdb files that describe molecueles to specify which geometries that molecules should describe. 
Packmol is in charge of dividing the number of molecules you want and in the region you want with a minimum separation which is called tolerance. 
by running the packmole file it will generate.

You can have a plain text with a "packmol < file_name.inp", packmol uses "inp" extenssion. The script should generate a "pdb" file, with the name of  
type of atom,  number of atom, name of the atom, Molecule model , spatial conditions , these ones are the most relevant one. 
For a water molecule we have that the atoms of Hydrogen and Oxigen are in a sequence for example 

ATOM      1  OH2 TIP3A   1      14.542   1.272  27.041  1.00  0.00      TIP3    
ATOM      2  H1  TIP3A   1      14.815   0.840  27.850  1.00  0.00      TIP3    
ATOM      3  H2  TIP3A   1      15.302   1.793  26.779  1.00  0.00      TIP3  

Packmol give us a static configuration, but the dynamics of these molecules, for this we will use VMD software. 

You can visualize the pdb file on ovito. 

