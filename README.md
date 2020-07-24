# Secant Method
Secant method is derivative of Newton’s Method for finding a root. The idea of this method is the first derivative of f(x) can be determined by using

![first dervative](https://i.upmath.me/svg/f'(x_n%20)%20%5Capprox%20%7B(f(x_n%20)-f(x_%7Bn-1%7D))%5Cover(x_n-x_%7Bn-1%7D)%7D)

without to solve by using analytic process anymore. Subtituted equation above to [Newton's Equation](https://github.com/auliakhalqillah/Newton-sMethod) and we get

![Subtituted](https://i.upmath.me/svg/x_%7Bn%2B1%7D%3Dx_n-%7Bf(x_n).(x_n-x_%7Bn-1%7D)%5Cover%20f(x_n)-f(x_%7Bn-1%7D)%7D)

to solve the root by using Secant Method. The Equation above can be simplified

![Simplified](https://i.upmath.me/svg/x_r%3Dx_2-%7Bf(x_2).(x_2-x_1)%5Cover%20f(x_2)-f(x_1)%7D)

The Secant Method is started by using two initial roots approximation `x1` and `x2` that may not in range of expected root. This equation is similar with false position method, but the false position method is started by using two initial range of root approximation, `xi` and `xf`, where in range of `[xi,xf]` may have a expected root. So, that’s why the false position is one of bracketing method and Secant Method is not bracketing method.
# Example
Given a function of f(x) = x2-2x+1. By using Secant Method, set two initial roots approximation `x1=3` and `x2=4`, where both initial are not in range of root of f(x). As we know, the root of this function is 1 by analytical process.

```
        iter   	  x             f(x)     		info        	error
           1   4.00000000       9.00000000     Not Convergence        1.00000000    
           2   2.20000005       1.44000006     Not Convergence        1.79999995    
           3   1.85714293      0.734694004     Not Convergence       0.342857122    
           4   1.50000000      0.250000000     Not Convergence       0.357142925    
           5   1.31578946       9.97229815E-02 Not Convergence       0.184210539    
           6   1.19354844       3.74610424E-02 Not Convergence       0.122241020    
           7   1.11999989       1.44000053E-02 Not Convergence        7.35485554E-02
           8   1.07407391       5.48696518E-03 Not Convergence        4.59259748E-02
           9   1.04580140       2.09772587E-03 Not Convergence        2.82725096E-02
          10   1.02830255       8.01086426E-04 Not Convergence        1.74988508E-02
          11   1.01749146       3.06010246E-04 Not Convergence        1.08110905E-02
          12   1.01080906       1.16825104E-04 Not Convergence        6.68239594E-03
          13   1.00668252       4.47034836E-05 Not Convergence        4.12654877E-03
          14   1.00412476       1.70469284E-05 Not Convergence        2.55775452E-03
          15   1.00254822       6.43730164E-06 Not Convergence        1.57654285E-03
          16   1.00159168       2.50339508E-06 Not Convergence        9.56535339E-04
          17   1.00098300       9.53674316E-07 Convergence            6.08682632E-04
          18   1.00060844       3.57627869E-07 Convergence            3.74555588E-04
          19   1.00038373       1.19209290E-07 Convergence            2.24709511E-04
          20   1.00027132       1.19209290E-07 Convergence            1.12414360E-04

```
After 20 times iteration, the root of f(x) = x2 – 2x + 1 by using Secant Method is x = 1.00027132 (precision in Fortran) where the f(x) = 1.9209290e-7 (close to 0).
# Contact
email: auliakhalqillah.mail@gmail.com
# Material Source
[Jeffrey R. Chasnov(2012), Numerical Methods](https://www.math.ust.hk/~machas/numerical-methods.pdf)
