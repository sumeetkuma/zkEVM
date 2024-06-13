pragma circom 2.0.0;

//This circuit checks that q = 0 when the input of a and b is 0  and 1 respectively 

template AssesmentCircuit () {  
// signal inputs
signal input a;
signal input b;

//signals from gates
signal x;
signal y;

//final signal output
signal output q;

//gates used to create circuit 
component andGate = AND();
component notGate = NOT();
component orGate = OR();

// circuit logic
andGate.a <== a;
andGate.b <== b;
x <== andGate.out;

notGate.in <== b;
y <== notGate.out;

orGate.a <== x;
orGate.b <== y;
q <== orGate.out;

   
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}


component main = AssesmentCircuit();