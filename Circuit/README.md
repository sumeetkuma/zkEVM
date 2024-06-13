# Poly Proof -Circom Circuit

This repository contains a Circom circuit that checks a specific condition regarding input signals `a` and `b` and outputs the result in signal `q`.


## Circuit Description

The `AssesmentCircuit` is designed to check if `q` is 0 when `a` is 0 and `b` is 1. The circuit utilizes logical gates such as AND, NOT, and OR to implement the required logic.

### Signal Inputs

- `a`: Input signal `a`.
- `b`: Input signal `b`.

### Signal Outputs

- `q`: Output signal that holds the result of the circuit.

### Circuit Logic

1. An AND gate (`andGate`) takes `a` and `b` as inputs and outputs the result to the signal `x`.
2. A NOT gate (`notGate`) takes `b` as an input and outputs the negation of `b` to the signal `y`.
3. An OR gate (`orGate`) takes `x` and `y` as inputs and outputs the result to the signal `q`.

The final output `q` will be 0 if `a` is 0 and `b` is 1; otherwise, it will be 1.

## Usage

To use this circuit, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/YashUpadhyay0456/poly-proof-3rd-assessment.git
cd poly-proof-3rd-assessment
```

2. Make sure you have Circom (2.0.0) installed on your system.

3. Compile the circuit:

```bash
circom circuit.circom -o circuit.json
```

4. Optionally, you can generate a constraint system and a witness using snarkjs:

```bash
snarkjs setup
snarkjs calculatewitness
```

5. Execute the circuit and get the output:

```bash
snarkjs groth16 prove
```

6. Verify the proof:

```bash
snarkjs groth16 verify
```

## Contributing

We welcome contributions to improve this Circom circuit or add new functionalities. If you find any issues or want to suggest improvements, please feel free to open an issue or submit a pull request.

## License

This Circom circuit is licensed under the [MIT License](LICENSE).

--
