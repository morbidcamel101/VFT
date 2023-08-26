@echo off
REM This batch file runs the Vacuum Field Theory experiments
REM from debug dir -> ..\..\..\Experiment\Wormholes.bat -. C:\Projects\VFT\bin\Debug\net6.0>..\..\..\Experiment\Wormholes.bat

echo --------------------------------------------
echo Running Wormholes Experiment...
echo --------------------------------------------

echo Running Experiment #1...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_01.txt
echo --------------------------------------------

echo Running Experiment #2...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_02.txt
echo --------------------------------------------

echo Running Experiment #3...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_03.txt
echo --------------------------------------------

echo Running Experiment #4...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_04.txt
echo --------------------------------------------

echo Running Experiment #5...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_05.txt
echo --------------------------------------------

echo Running Experiment #6...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_06.txt
echo --------------------------------------------

echo Running Experiment #7...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_07.txt
echo --------------------------------------------

echo Running Experiment #8...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_08.txt
echo --------------------------------------------

echo Running Experiment #9...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_09.txt
echo --------------------------------------------

echo Running Experiment #10...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_10.txt
echo --------------------------------------------

pause

echo Running Experiment #11...
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_11.txt
echo --------------------------------------------

echo Running Experiment #12...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_12.txt
echo --------------------------------------------

echo Running Experiment #13...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_13.txt
echo --------------------------------------------

echo Running Experiment #14...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_14.txt
echo --------------------------------------------

echo Running Experiment #15...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_15.txt
echo --------------------------------------------

echo Running Experiment #16...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_16.txt
echo --------------------------------------------

echo Running Experiment #17...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_17.txt
echo --------------------------------------------

echo Running Experiment #18...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_18.txt
echo --------------------------------------------

echo Running Experiment #19...
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin false --phase 1.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_19.txt
echo --------------------------------------------

pause

echo Running Experiment #20...
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin true --phase 1.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_20.txt
echo --------------------------------------------

echo Running Experiment #21...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 1.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_21.txt
echo --------------------------------------------

echo Running Experiment #22...
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 1.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_22.txt
echo --------------------------------------------

echo Running Experiment #23...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin false --phase 1.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_23.txt
echo --------------------------------------------

echo Running Experiment #24...
VacuumFieldTheory --exp Wormholes -n 25 --runs 100 --spin true --phase 1.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_24.txt
echo --------------------------------------------


echo Running Experiment #25...
echo Hypothesis: With 10 qubits and no spin, we expect a baseline measurement of v-boson activity.
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_25.txt
echo --------------------------------------------

echo Running Experiment #26...
echo Hypothesis: Introducing spin with 10 qubits may increase correlations between v-bosons.
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_26.txt
echo --------------------------------------------

echo Running Experiment #27...
echo Hypothesis: A phase of 0.5 with no spin might slightly alter the v-boson activity from the baseline.
VacuumFieldTheory --exp Wormholes -n 10 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_27.txt
echo --------------------------------------------
echo Running Experiment #28...
echo Hypothesis: With 15 qubits and no spin, we expect a moderate level of v-boson activity.
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_28.txt
echo --------------------------------------------

echo Running Experiment #29...
echo Hypothesis: Introducing spin with 15 qubits may enhance correlations between v-bosons.
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_29.txt
echo --------------------------------------------

pause

echo Running Experiment #30...
echo Hypothesis: A phase of 0.5 with 15 qubits and no spin might slightly alter the v-boson activity from the baseline.
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_30.txt
echo --------------------------------------------

echo Running Experiment #31...
echo Hypothesis: A phase of 0.5 with 15 qubits and spin could lead to stronger interactions between v-bosons.
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_31.txt
echo --------------------------------------------

echo Running Experiment #32...
echo Hypothesis: A phase of 1 with 15 qubits and no spin might show a different pattern of v-boson activity.
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin false --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_32.txt
echo --------------------------------------------

echo Running Experiment #33...
echo Hypothesis: A phase of 1 with 15 qubits and spin could lead to unique interactions between v-bosons.
VacuumFieldTheory --exp Wormholes -n 15 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_33.txt
echo --------------------------------------------

echo Running Experiment #34...
echo Hypothesis: With 20 qubits and no spin, we expect a higher baseline measurement of v-boson activity.
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_34.txt
echo --------------------------------------------

echo Running Experiment #35...
echo Hypothesis: Introducing spin with 20 qubits may show significant correlations between v-bosons.
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_35.txt
echo --------------------------------------------

echo Running Experiment #36...
echo Hypothesis: A phase of 0.5 with 20 qubits and no spin might alter the v-boson activity noticeably.
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_36.txt
echo --------------------------------------------

echo Running Experiment #37...
echo Hypothesis: A phase of 0.5 with 20 qubits and spin could lead to distinct v-boson interactions.
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 0.5 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_37.txt
echo --------------------------------------------

echo Running Experiment #38...
echo Hypothesis: A phase of 1 with 20 qubits and no spin might show a unique pattern of v-boson activity.
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin false --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_38.txt

echo --------------------------------------------
echo Running Experiment #39...
echo Hypothesis: A phase of 1 with 20 qubits and spin could reveal stronger v-boson interactions.
VacuumFieldTheory --exp Wormholes -n 20 --runs 100 --spin true --phase 1 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_39.txt
echo --------------------------------------------

echo Running Experiment #40...
echo Hypothesis: With 23 qubits and no spin, we expect the highest baseline measurement of v-boson activity.
VacuumFieldTheory --exp Wormholes -n 23 --runs 100 --spin false --phase 0 --layers 1 -t -1 --verbose false --csv false > ..\..\..\Experiment\Results\Wormholes_40.txt
echo --------------------------------------------

echo All experiments completed!
pause

