@echo off
REM This batch file runs the Vacuum Field Theory experiments
REM from debug dir -> ..\..\..\Experiment\Wormholes.bat -. C:\Projects\VFT\bin\Debug\net6.0>..\..\..\Experiment\Wormholes.bat

echo --------------------------------------------
echo Running Wormholes Experiment...
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

echo Running Experiment #13...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_13.txt
echo --------------------------------------------

echo Running Experiment #14...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_14.txt
echo --------------------------------------------

echo Running Experiment #15...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_15.txt
echo --------------------------------------------

echo Running Experiment #16...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_16.txt
echo --------------------------------------------

echo Running Experiment #17...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 1 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_17.txt
echo --------------------------------------------

echo Running Experiment #18...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_18.txt
echo --------------------------------------------

echo Running Experiment #19...
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin false --phase 1.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_19.txt
echo --------------------------------------------

echo Running Experiment #20...
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin true --phase 1.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_20.txt
echo --------------------------------------------

echo Running Experiment #21...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 1.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_21.txt
echo --------------------------------------------

echo Running Experiment #22...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 1.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_22.txt
echo --------------------------------------------

echo Running Experiment #23...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 1.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_23.txt
echo --------------------------------------------

echo Running Experiment #24...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 1.5 --layers 1 -t -1 --verbose false > ..\..\..\Experiment\Results\Wormholes_24.txt
echo --------------------------------------------

echo All experiments completed!
pause

