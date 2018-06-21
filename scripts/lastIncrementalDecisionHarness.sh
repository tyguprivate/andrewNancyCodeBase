#!/bin/bash

branchFactors="
2"

depths="
10"

numProcs=0

for b in ${branchFactors[@]}
do
  for d in ${depths[@]}
  do
	mkdir ../results/lastIncrementalDecision/b${b}d${d}
	instance=0
	for file in ../worlds/treeWorld/b${b}d${d}-*
	do
	  if ((numProcs >= 12))
	  then
		wait
		numProcs=0
	  fi
	  if [ -f ../results/lastIncrementalDecision/b${b}d${d}/LID-b${b}d${d}-${instance}.json ]
	  then 
		let instance++
	  else
		./../cpp/lastIncremental.sh (d - 1) ../results/lastIncrementalDecision/b${b}d${d}/LID-b${b}d${d}-${instance}.json < $file &
		let instance++
		let numProcs++
	  fi
	done
  done
done
