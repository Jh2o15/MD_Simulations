## Overview 
This project explores how to generate geometric configurations using packmol. 

In particular, we generate a shield of urea with water on its inside and outside. No dynamics are implemented in this work.

As raw materials we are using water(tip3.pdb) and urea(urea.pdb) both model of molecules are generated from Charmm-GUI.

We also realize a lateral cut such that we can observe its inside and with visualization tools we can make an evenmore clear distinction between the molecules. 

The geometry is described in ***water_urea_shell.inp*** and it can be runned with _packmol < water_urea_shell.inp_ , which generates ***water_urea_shell.pdb***.

## Visualization (Ovito)

Open the water_ure_shell.pdb with Ovito,

Add modification --> Coloring (Color coding) --> Operates in Particles 

This would color all the molecules with a unique color. 
