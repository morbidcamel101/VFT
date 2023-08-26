@echo off
REM This batch file runs the Vacuum Field Theory experiments
REM from debug dir -> ..\..\..\Experiment\VacuumShielding.bat

echo --------------------------------------------
echo Running Vacuum Shielding Experiment...
echo --------------------------------------------

echo Running Experiment #1...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_01.txt
echo --------------------------------------------

echo Running Experiment #2...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_02.txt
echo --------------------------------------------

echo Running Experiment #3...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_03.txt
echo --------------------------------------------

echo Running Experiment #4...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_04.txt
echo --------------------------------------------

echo Running Experiment #5...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_05.txt
echo --------------------------------------------

echo Running Experiment #6...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 1 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_06.txt
echo --------------------------------------------

echo Running Experiment #7...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_07.txt
echo --------------------------------------------

echo Running Experiment #8...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_08.txt
echo --------------------------------------------

echo Running Experiment #9...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_09.txt
echo --------------------------------------------

echo Running Experiment #10...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_10.txt
echo --------------------------------------------

echo Running Experiment #11...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_11.txt
echo --------------------------------------------

echo Running Experiment #12...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_12.txt
echo --------------------------------------------

echo All experiments completed!
pause
