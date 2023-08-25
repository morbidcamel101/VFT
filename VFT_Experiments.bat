@echo off
REM This batch file runs the Vacuum Field Theory experiments

echo Running Experiment #1...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin false --phase 0
echo --------------------------------------------

echo Running Experiment #2...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin true --phase 0
echo --------------------------------------------

echo Running Experiment #3...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin false --phase 0.5
echo --------------------------------------------

echo Running Experiment #4...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin true --phase 0.5
echo --------------------------------------------

echo Running Experiment #5...
VacuumFieldTheory -n 30 --num-runs 100 --use-spin true --phase 0
echo --------------------------------------------

echo Running Experiment #6...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin false --phase 1
echo --------------------------------------------

echo Running Experiment #7...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin true --phase 1
echo --------------------------------------------

echo Running Experiment #8...
VacuumFieldTheory -n 25 --num-runs 100 --use-spin false --phase 0
echo --------------------------------------------

echo Running Experiment #9...
VacuumFieldTheory -n 25 --num-runs 100 --use-spin false --phase 0.5
echo --------------------------------------------

echo Running Experiment #10...
VacuumFieldTheory -n 25 --num-runs 100 --use-spin true --phase 0.5
echo --------------------------------------------

echo Running Experiment #11...
VacuumFieldTheory -n 25 --num-runs 100 --use-spin true --phase 1
echo --------------------------------------------

echo Running Experiment #12...
VacuumFieldTheory -n 20 --num-runs 100 --use-spin true --phase 0.5
echo --------------------------------------------

echo All experiments completed!
pause
