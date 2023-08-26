namespace VFT {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Convert;

    operation EntanglementSwappingExperiment() : Result[] {
        use qubits = Qubit[4];
        let A1 = qubits[0];
        let A2 = qubits[1];
        let B1 = qubits[2];
        let B2 = qubits[3];

        // Logging
        Message("Creating initial entanglement...");

        // Create initial entanglement
        H(A1);
        CNOT(A1, A2);
        H(B1);
        CNOT(B1, B2);

        // Logging
        Message("Performing Bell measurement on A1 and B1...");

        // Bell measurement on A1 and B1
        CNOT(A1, B1);
        H(A1);
        let resultA1 = M(A1);
        let resultB1 = M(B1);

        // Depending on the measurement results, apply corrections to A2 and B2
        if (resultA1 == One) {
            Z(A2);
        }
        if (resultB1 == One) {
            X(B2);
        }

        // Logging
        Message("A2 and B2 are now entangled. Performing a Bell test on them...");

        // Now, A2 and B2 are entangled. Perform a Bell test on them.
        let bellResults = [M(A2), M(B2)];

        ResetAll(qubits);
        return bellResults;
    }

    operation EntanglementSwapping() : Unit {
        let results = EntanglementSwappingExperiment();
        Message($"Results of the Bell test on A2 and B2: {results}");
        
        let correlated = IsCorrelated(results[0], results[1]);
        Message($"Are A2 and B2 correlated? {correlated}");
    }

    function IsCorrelated(result1: Result, result2: Result) : String {
        if (result1 == result2) {
            return "Yes";
        } else {
            return "No";
        }
    }

}
