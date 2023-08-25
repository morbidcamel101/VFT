namespace Quantum.VacuumFieldTheory {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math; // For the Sqrt function

    operation PrepareAndMeasure() : Result {
        use qubit = Qubit(); // Allocate a qubit
        H(qubit); // Put qubit in superposition with the Hadamard gate
        let result = M(qubit); // Measure the qubit
        Reset(qubit); // Reset the qubit
        return result;
    }

    operation GatherStatistics(n: Int) : (Int, Int) {
        mutable zeros = 0;
        mutable ones = 0;
        for _ in 1..n {
            if (PrepareAndMeasure() == Zero) {
                set zeros += 1;
            } else {
                set ones += 1;
            }
        }
        return (zeros, ones);
    }

    operation ApplyAnnihilationOperator(register : Qubit[]) : Unit {
    // This is a conceptual representation and not actual Q# code.
    // Implement the action of the annihilation operator on the quantum register.
    // This would involve a series of controlled rotations and other gates.
    }

    operation QuantumHarmonicOscillator(register : Qubit[]) : Unit {
        // Prepare the register in some initial state, e.g., the ground state.

        // Apply the annihilation operator.
        ApplyAnnihilationOperator(register);

    // Measure the register or continue with other operations.
    }


    function CalculateStdDev(N: Double, p: Double) : Int {
        return Floor(Sqrt(N * p * (1.0 - p))); // Using Floor function to round down to nearest integer.
    }

    function AbsoluteValue(x: Int) : Int {
        if (x < 0) {
            return -x;
        }
        return x;
    }


operation RunMultipleExperiments(n: Int, trials: Int) : Unit {
    mutable totalDeviationZeros = 0;
    mutable totalDeviationOnes = 0;
    mutable leanTowardZeros = 0;
    mutable leanTowardOnes = 0;

    for i in 1..n {
        Message($"Run #{i}:");

        let (zeros, ones) = GatherStatistics(trials);

        // Assuming a 50-50 chance from a Hadamard gate
        let expectedProbability = 0.5;
        let stdDev = CalculateStdDev(IntAsDouble(trials), expectedProbability);

        let deviationZeros = AbsoluteValue(trials/2 - zeros);
        let deviationOnes = AbsoluteValue(trials/2 - ones);

        set totalDeviationZeros += deviationZeros;
        set totalDeviationOnes += deviationOnes;

        // Checking leaning towards
        if (zeros > trials/2) {
            set leanTowardZeros += 1;
        }
        if (ones > trials/2) {
            set leanTowardOnes += 1;
        }

        Message($"Zeros: {zeros}");
        Message($"Ones: {ones}");
        Message($"Expected Standard Deviation: {stdDev}");
        
        mutable deviationZerosComment = "";        
        if (deviationZeros > stdDev) {
            set deviationZerosComment = "(Above Expectation)";
        } else {
            set deviationZerosComment = "(Within Expectation)";
        };
        Message($"Actual Deviation from Mean for Zeros: {deviationZeros} {deviationZerosComment}");        
        
        mutable deviationOnesComment = "";        
        if (deviationOnes > stdDev) {
            set deviationOnesComment = "(Above Expectation)";
        } else {
            set deviationOnesComment = "(Within Expectation)";
        }

        Message($"Actual Deviation from Mean for Ones: {deviationOnes} {deviationOnesComment}");

        // Display accumulated statistics after each run
        let currentAvgDeviationZeros = totalDeviationZeros / i;
        let currentAvgDeviationOnes = totalDeviationOnes / i;

        Message($"\nAccumulated statistics after {i} runs:");
        Message($"Average Deviation from Mean for Zeros: {currentAvgDeviationZeros}");
        Message($"Average Deviation from Mean for Ones: {currentAvgDeviationOnes}");
        Message($"Runs leaning towards Zeros: {leanTowardZeros}");
        Message($"Runs leaning towards Ones: {leanTowardOnes}\n");
    }
}



}
