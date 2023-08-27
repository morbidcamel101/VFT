@echo off
setlocal enabledelayedexpansion
REM This batch file runs the Vacuum Field Theory experiments

echo --------------------------------------------
echo Running Wormholes Experiment...
echo --------------------------------------------

echo Experiment,Id,Run,Qubits,Layers,Layer,Spin,Phase,FlagPattern,OnesCount,CorrelatedPairs,V,alpha,delta,Vn,alphaN,deltaN > ..\..\..\Experiment\Results\Wormholes.csv

REM Initialize experiment ID
set id=0
set runs=1000

REM Loop through qubit counts
for %%q in (5,10,15,20) do (
    REM Loop through spins
    for %%s in (true,false) do (
        REM Loop through phases
        for %%p in (0,0.25,0.5,0.75,1,1.25,1.5,1.75,2) do (
            REM Increment experiment ID
            set /a id+=1
            
            echo Running Experiment #!id!...
            echo "--id !id! -n %%q --runs !runs! --spin %%s --phase %%p --layers 1 -t -1 "
            VacuumFieldTheory --exp Wormholes --id !id! -n %%q --runs !runs! --spin %%s --phase %%p --layers 1 -t -1 --verbose false --csv true >> ..\..\..\Experiment\Results\Wormholes.csv
            echo --------------------------------------------
        )
    )
)

echo Experiments completed.
endlocal
