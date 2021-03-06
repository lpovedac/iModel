#!/bin/bash

source inc_vars.sh 

# Script for convergence analysis on HR95 grids
#------------------------------------------

echo "            Basic Parameters     "
echo "---------------------------------"
echo " "
cat par/mesh.par

awk '{ if ( NR == 5 ) { print "read";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par

awk '{ if ( NR == 17 ) { print "HR95JT_001.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

awk '{ if ( NR == 17 ) { print "HR95JT_002.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

awk '{ if ( NR == 17 ) { print "HR95JT_003.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

awk '{ if ( NR == 17 ) { print "HR95JT_004.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

awk '{ if ( NR == 17 ) { print "HR95JT_005.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

awk '{ if ( NR == 17 ) { print "HR95JT_006.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

awk '{ if ( NR == 17 ) { print "HR95JT_007.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
cp par/mesh2.par par/mesh.par
./imodel

#awk '{ if ( NR == 17 ) { print "HR95JT_008.xyz";} else {print $0;} }'  par/mesh.par > par/mesh2.par
#cp par/mesh2.par par/mesh.par
#./imodel


