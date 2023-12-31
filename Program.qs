﻿namespace VFT {

    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation RunExperiment(exp: String, id: Int, runs: Int, n: Int, t: Double, spin: Bool,  phase: Double,  layers: Int, verbose: Bool, csv: Bool) : Unit {
        
        if (!csv) {
            Message("--START OF RUN--");
        }
        
        // Check for default values
        if (exp == "VacuumAlphaDelta") {
            VacuumAlphaDeltaExperiment(runs);
        }
        if (exp == "VacuumInteractionTime") {
            VacuumInteractionTime(runs, t);
        }
        if (exp == "MultiQubitVacuumInteraction") {
            MultiQubitVacuumInteraction(runs, t, n);
        }
        if (exp == "Wormholes") {
            Wormholes(id, n, runs, spin, phase, layers, verbose, csv);
        }
        if (exp == "EntanglementSwapping") {
            EntanglementSwapping();
        }        
        if (exp == "VacuumShielding") {
            VacuumShielding(runs, t);
        }
        if (!csv) {
            Message("--END OF RUN--");
		}
    }
}
