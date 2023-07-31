pragma circom 2.0.0;
  

template Multiplier2 () {

   signal input a;
   signal input b;
   signal x;
   signal y;
   signal output z;
   //instances
   component not = NOT();
   component or = OR();
   component and = AND();
   not.i <== a;
   x <== not.out;

   or.a <== a;
   or.b <== b;
   y <== or.out;
   and.a <== x;
   and.b <== y;
   z <== and.out;

}
   template NOT() 
   {
    signal input i;
    signal output out;

    out <== 1 + i - 2*i;
   }
   
   template AND() 
   {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
   }

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}


component main = Multiplier2();