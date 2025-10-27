This projects simulate a box of water using a tip3 model. 

Tip3 models have a distributed its charge over the 3 atoms that form the molecule, and it was donwloaded from Charmm. It's name is "tip3.pdb".

For this we proced as follows: 

1.- set up the initial geometry of th problem with the *water_geometry_input.in* which needs to be runned with packmol and generaates *waterbox.pdb*.

2.- Using waterbox.pdb, we create its tipology file *water_topo_tcl* and run it on the VMD console. This step generates *water.daba*, a file with all the information that would need to code the simulation.

3.- Reading *water.data* we obtain the data needed for the simulation and we code it in lammps, the outcome of this step is *water_small.lammpstrj*
