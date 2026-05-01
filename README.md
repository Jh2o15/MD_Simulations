# Quick tutorial on how to start on molecular dynamics

## Simulation workflow
molecule generation -> geometry generation -> topology generation -> dynamics generation -> visualization
## Molecule Generation (Charmm)
So far we are generating molecules by using Charmm-Gui, or looking at the resposity of them 
* https://www.charmm-gui.org/?doc=archive&lib=csml  #Library of molecules 
* https://www.charmm-gui.org/?doc=input/ligandrm    #Input generator
## Geometry Generation (Packmol)
Packmole is a software that help us to set up the initial configurations of our system. 
You need pdb files that describe molecules you want to work with and then specify which geometries that molecules should describe. 
Packmol is in charge of dividing the number of molecules you want, in the region you want with a minimum separation which is called tolerance. 

By running the packmole file it will generate.

You can have a plain text with a ***packmol < file_name.inp***, packmol uses "inp" extenssion. The script should generate a "pdb" file, with the name of  
type of atom,  number of atom, name of the atom, Molecule model , spatial conditions , these ones are the most relevant one. 
For a water molecule we have that the atoms of Hydrogen and Oxigen are in a sequence for example 

ATOM      1  OH2 TIP3A   1      14.542   1.272  27.041  1.00  0.00      TIP3    
ATOM      2  H1  TIP3A   1      14.815   0.840  27.850  1.00  0.00      TIP3    
ATOM      3  H2  TIP3A   1      15.302   1.793  26.779  1.00  0.00      TIP3  

Packmol give us a static configuration, but the dynamics of these molecules, for this we will use VMD software. 

## Topology Generation (VMD+topotools) 

VMD is a molecular visualization and analysis enviroment software, and its used to prepare molecular systems for simulation. It also contains Tcl script interface which runs _tcl_ scripts that automate the set up and export data to simulate in lammps. 

Topotools helps you to create or edit bonds, angles, atom types, charges. It can guess connectivity and also write lammps data files. Topotools look at interatomic distances and guesses connectivity based of a cut off.

Once you generated the tcl file, you need to run it with ***source your_script.tcl*** this will produce a _outcome_file.data_ file with the information you need in lammps. 
One way to run it is to open the Tk console in VMD and execute the command. Nevertheless, be sure that the source of the tcl file and the path where you are running it are consistent. 

## Dynamics Generation (LAMMPS) 

## Visualization (OVITO)

You can visualize the pdb file on ovito. 

