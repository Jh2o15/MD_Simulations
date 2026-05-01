#loads the file waterbox as a new molecule and wait untill all frames are finished.
mol new waterbox.pdb waitfor all

#package for periodic boundary conditions
package require pbctools 

#package to create/modify molecular topology data inside VMD and to export to Lammps
package require topotools 

#set periodic boundary conditions to the box, -all apply pbc to all molecules
pbc set {40.0 40.0 40.0} -all 

#it makes an identification of molecules, in case that packmol change the name of the molecules
set selO [atomselect top "name OH2 or name oh2"]
set selH [atomselect top "name H1 or name H2 or name h1 or name h2"]

#homogenize (?) the name of the molecules and give them a charge and a mass
$selO set type O
$selH set type H
$selO set charge -0.834
$selH set charge  0.417
$selO set mass 15.9994
$selH set mass 1.008

#ask topotools to identify atomic interaction based on interatomic distances.
topo guessbonds 
#after bonds are presented compute the angles. 
topo guessangles 

#write the topology of the molecule in a Lammps data file 
topo writelammpsdata water.data full 
