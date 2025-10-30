package require psfgen #load psfgen which builts the topology and conection 

#These files load CHARMM topology files for molecules 
#psf uses these to know bounds, charges, names

topology toppar/top_all36_prot.rtf # proteins
topology toppar/top_all36_cgenff.rtf # small molecules 
topology toppar/top_all36_ions.rtf # water/ions

#charge the configuration produced by packmol
mol new solvate.pdb waitfor all 

#create a psfg segment by reading sovlate.pdb guess to which molecules the data belong to
segment SOLU {pdb solvate.pdb first none last one}

#disable psfg autosaguess
segment SOLV {auto none}

coordpdb solvate.pdb SOLU #pushes coordinates from the pdb
guesscoord
#notice that SOLV does not recieve coordinates 

topo writelammpsdata water.data full
