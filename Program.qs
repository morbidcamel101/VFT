namespace VFT {

    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation RunExperiment(exp: String, runs: Int, n: Int, t: Double, spin: Bool,  phase: Double,  layers: Int, verbose: Bool) : Unit {
        
        Message("--START OF RUN--");
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
            Wormholes(n, runs, spin, phase, layers, verbose);
        }
        if (exp == "EntanglementSwapping") {
            EntanglementSwapping();
        }        
        if (exp == "VacuumShielding") {
            VacuumShielding(runs, t);
        }
        Message("--END OF RUN--");
    }
}
