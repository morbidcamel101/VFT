namespace VFT {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Arrays;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;

    operation Wormholes(id: Int, n: Int, numRuns: Int, useSpin: Bool, phase: Double, layers: Int, verbose: Bool, csv: Bool) : Unit {
        
        mutable onesData = [0, size = numRuns];
        mutable correlatedPairsData = [0, size = numRuns];

        for run in 1..numRuns {
            
            if (!csv) {
                if (verbose) {
                    Message($"Run {run} of {numRuns}...");
                }
                else {
                    Message($"---------------------------------------------- {run} / {numRuns}");
                }
            }

            // Create a lattice with multiple layers
            use qubits = Qubit[n * layers]; // Allocate qubits for all layers at once

            for i in 0..Length(qubits)-1 {
                Reset(qubits[i]);
		    }

            // Create the lattice
            for layer in 1..layers {
                // Create spaced-out wormhole structure for each layer
                let startQubitIndex = (layer - 1) * n;
                let endQubitIndex = startQubitIndex + n - 1;
                let currentLayerQubits = qubits[startQubitIndex..endQubitIndex];
                
                let numberToEncode = 42; // Example number
                let dataToEncode = NumberToBoolArray(numberToEncode, n);
                //EncodeData(currentLayerQubits, dataToEncode);

                CreateWormholeWithSpacing(currentLayerQubits, phase, useSpin, verbose);
            }

            // Measure the lattice
            for layer in 1..layers {

                // Create spaced-out wormhole structure for each layer
                let startQubitIndex = (layer - 1) * n;
                let endQubitIndex = startQubitIndex + n - 1;
                let currentLayerQubits = qubits[startQubitIndex..endQubitIndex];

                // Measure and analyze the current layer
                let (results, flagPattern, V, alpha, delta, Vn, alphaN, deltaN) = MeasureWormhole(currentLayerQubits, layer, verbose);

                let onesCount = Count(EqualToOne, results);
                set onesData w/= run-1 <- onesCount;

                let correlatedPairs = CountCorrelatedPairs(results);
                set correlatedPairsData w/= run-1 <- correlatedPairs; 

                if (!csv) {
                    Message($"{layer} | qubit {Length(results)-1}: {flagPattern} | V({Vn}) = a({alphaN}) + d({deltaN}) ");
                }
                else {
                    // Experiment,Run,Qubits,Layers,Spin,Phase
                    Message($"Wormholes,{id},{run},{Length(results)},{layers},{layer},{useSpin},{phase},{flagPattern},{onesCount},{correlatedPairs},{V},{alpha},{delta},{Vn},{alphaN},{deltaN}");
                }
			}
        }

        // Compute mean and standard deviation
        let meanOnes = Mean(onesData);
        let stdDevOnes = StdDev(onesData, meanOnes);

        let meanCorrelatedPairs = Mean(correlatedPairsData);
        let stdDevCorrelatedPairs = StdDev(correlatedPairsData, meanCorrelatedPairs);

        if (!csv) {
            PrintParameters(n, numRuns, useSpin, phase, layers, verbose);

            Message($"Average number of Ones over {numRuns} runs: {meanOnes} with standard deviation: {stdDevOnes}. This indicates the average 'density' or 'population' of v-bosons in the quantum vacuum.");
            Message($"Average number of correlated neighboring qubit pairs over {numRuns} runs: {meanCorrelatedPairs} with standard deviation: {stdDevCorrelatedPairs}. This suggests the interactions or correlations between v-bosons in the quantum vacuum.");

            if (meanOnes > IntAsDouble(n) / 2.0) {
                Message("The higher than expected average number of Ones suggests a more 'active' vacuum with increased v-boson activity.");
            }

            if (meanCorrelatedPairs > IntAsDouble(n) / 2.0) {
                Message("The higher than expected number of correlated pairs indicates stronger interactions or correlations between v-bosons, supporting the VFT hypothesis.");
            }        
        }
    }

    operation CreateWormholeWithSpacing(qubits: Qubit[], phase: Double, useSpin: Bool,  verbose: Bool) : Unit {
        if (verbose) {
            Message("Creating the spaced-out wormhole structure...");
        }
        
        for i in 0..Length(qubits)-1 {
            
            H(qubits[i]);

            if (useSpin) {
                // Optionally introduce spin
                IntroduceSpin(qubits[i], verbose);
            }
    
            // If it's the last qubit, entangle it with the first qubit
            if (i == Length(qubits) - 1) {
                CNOT(qubits[i], qubits[0]);
                if (phase > 0.0) {
                    Rz(phase, qubits[0]);
                }
            } else {
                CNOT(qubits[i], qubits[i + 1]);
                if (phase > 0.0) {
                    Rz(phase, qubits[i + 1]);
                }
            }
        }

        if (verbose) {
            Message("Spaced-out wormhole structure created.");
        }
    }

    operation MeasureWormhole(qubits: Qubit[], layer: Int, verbose: Bool) : (Result[], String, Double, Double, Double, Double, Double, Double) {
        mutable results = [Zero, size = Length(qubits)];
        mutable flagPattern = "";
        if (verbose) {
            Message("Measuring the wormhole's state...");
        }
        for i in 0..Length(qubits)-1 {
            let measurementResult = M(qubits[i]);
            set results w/= i <- measurementResult;
            if (measurementResult == One) {
                set flagPattern += "X";
            } else {
                set flagPattern += ".";
            } 
        }
        let (V, alpha, delta) = MeasureVacuumEnergy(qubits);
        let (Vn, alphaN, deltaN) = MeasureVacuumEnergyNormalized(qubits);
        return (results, flagPattern, V, alpha, delta, Vn, alphaN, deltaN);
    }

    operation PrintParameters(n: Int, numRuns: Int, useSpin: Bool, phase: Double, layers: Int, verbose: Bool) : Unit {
        Message("===============================================");
        Message($"Parameters for the current run:");
        Message($"Number of qubits (n): {n}");
        Message($"Number of runs: {numRuns}");
        Message($"Use Spin: {useSpin}");
        Message($"Phase: {phase}");
        Message($"Number of layers: {layers}");
        Message($"Verbose mode: {verbose}");
        Message("===============================================");
    }

    operation SpinUpAndTransferData(qubitsLayer1: Qubit[], qubitsLayer2: Qubit[]) : Unit {
        // Spin up the qubits in the first layer
        for qubit in qubitsLayer1 {
            H(qubit); // or X(qubit) for a specific spin direction
        }

        // Transfer data from the first layer to the second layer
        for i in 0..Length(qubitsLayer1)-1 {
            CNOT(qubitsLayer1[i], qubitsLayer2[i]);
        }
    }

    operation IntroduceSpin(qubit: Qubit, verbose: Bool) : Unit {
        if (verbose) {
            Message("Introducing spin...");
        }
        X(qubit); // Flips the qubit from |0⟩ to |1⟩ or vice versa, simulating the introduction of spin.
        if (verbose) {
            Message("Spin introduced on the qubit.");
        }
    } 

    operation EncodeData(qubits: Qubit[], data: Bool[]) : Unit {
        for i in 0..Length(qubits)-1 {
            if (data[i]) {
                X(qubits[i]);
            }
        }
    }  


    function EqualToOne(result: Result) : Bool {
        return result == One;
    }

    function CountCorrelatedPairs(results: Result[]) : Int {
        mutable count = 0;
        for i in 0..Length(results) - 2 {
            if (results[i] == results[i + 1]) {
                set count += 1;
            }
        }
        return count;
    }

    function Mean(data: Int[]) : Double {
        let sum = Fold(PlusI, 0, data);
        return IntAsDouble(sum) / IntAsDouble(Length(data));
    }

    function StdDev(data: Int[], mean: Double) : Double {
        mutable sumOfSquaredDifferences = 0.0;
        for x in data {
            set sumOfSquaredDifferences += PowD(IntAsDouble(x) - mean, 2.0);
        }
        let variance = sumOfSquaredDifferences / IntAsDouble(Length(data));
        return Sqrt(variance);
    }

    function PlusI(a: Int, b: Int) : Int {
        return a + b;
    }
}
