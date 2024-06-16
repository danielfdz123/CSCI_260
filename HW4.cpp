#include <iostream>

// WE ARE TESTING 2 TIMES 3 IN THIS CODE!!!!

int MIPS_multiply(int a, int b)
{
    int num = a;    //paramater A (this holds 2 via test values)
    int num1 = b;   //parameter B (this holds 3 via test values)
    int sum = 0;    //this is the result

         // i = 0; i < 3   ; i++)
    for(int i = 0; i < num1; i++)
    {
        sum = sum + num;    //sum + a (0 + 2)
    } 
    return sum;
/*  1st run through:  (i = 0) 0 + 2 
    2nd run through:  (i = 1) 2 + 2 
    3rd run through:  (i = 2) 4 + 2
    4th run thorugh:  (i = 3) FAILS since iequality is false
    
    Return final sum which was 4+2, which is the same as 2*3    */
}

//Test values via function call
int main()
{
    std::cout << MIPS_multiply(2, 3);
    return 0;
}

