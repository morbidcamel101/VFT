namespace VFT {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Convert;

    // \[ V = \alpha + \delta \]
    //Where:
    //  - \( V \) represents the state or intensity of the vacuum field at a given point.
    //  - \( \alpha \) is a constant that represents the average or base state of the vacuum field.
    //  - \( \delta \) is the fluctuation or deviation of the vacuum field from its base state, which could be influenced by various factors such as proximity to matter, energy, or other fields.

    // This equation suggests that the vacuum field isn't just a static background, but a dynamic entity that can change based on various influences.
    // Lattice: entangled pairs

   operation MeasureVacuumEnergy(lattice: Qubit[]) : (Double, Double, Double) {
        mutable deltaEstimate = 0.0;
        let numQubits = Length(lattice);

        // Measure each qubit in the lattice
        for q in lattice {           
            // Measure the qubit
            let result = M(q);
            if (result == One) {
                set deltaEstimate += 1.0;
            }
        }

        // Baseline energy is 0.5 for each qubit due to superposition
        let alphaEnergy = 0.5 * IntAsDouble(numQubits);

        // Dynamic energy is the difference from the baseline
        let deltaEnergy = deltaEstimate - alphaEnergy;

        // Compute V
        let V = alphaEnergy + deltaEnergy;

        return (V, alphaEnergy, deltaEnergy);
    }

    operation MeasureVacuumEnergyNormalized(lattice: Qubit[]) : (Double, Double, Double) {
        mutable deltaEstimate = 0.0;
        let numQubits = Length(lattice);
        let maxEnergy = IntAsDouble(numQubits); // Maximum possible energy

        // Measure each qubit in the lattice
        for q in lattice {           
            // Measure the qubit
            let result = M(q);
            if (result == One) {
                set deltaEstimate += 1.0;
            }
        }

        // Baseline energy is 0.5 for each qubit due to superposition
        let alphaEnergy = 0.5 * IntAsDouble(numQubits);

        // Dynamic energy is the difference from the baseline
        let deltaEnergy = deltaEstimate - alphaEnergy;

        // Compute V
        let V = alphaEnergy + deltaEnergy;

        // Normalize the energies
        let normalizedV = V / maxEnergy;
        let normalizedAlpha = alphaEnergy / maxEnergy;
        let normalizedDelta = deltaEnergy / maxEnergy;

        return (normalizedV, normalizedAlpha, normalizedDelta);
    }


    function NumberToBoolArray(number: Int, n: Int) : Bool[] {
        mutable result = [false, size = n];
        mutable temp = number;
        for i in 0..n-1 {
            if (temp % 2 == 1) {
                set result w/= i <- true;
            }
            set temp /= 2;
        }
        return result;
    }
}
