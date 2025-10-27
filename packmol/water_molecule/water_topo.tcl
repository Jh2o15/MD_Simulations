
mol new waterbox.pdb waitfor all

package require pbctools
package require topotools

pbc set {40.0 40.0 40.0} -all 

set selO [atomselect top "name OH2 or name oh2"]
set selH [atomselect top "name H1 or name H2 or name h1 or name h2"]

$selO set type O
$selH set type H
$selO set charge -0.834
$selH set charge  0.417
$selO set mass 15.9994
$selH set mass 1.008

topo guessbonds
topo guessangles

topo writelammpsdata water.data full
