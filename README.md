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

After 19 times iteration, the root of f(x) = x2 – 2x + 1 by using Secant Method is x = 1.00027132 (precision in Fortran) where the f(x) = 1.9209290e-7 (close to 0).
# Contact
email: auliakhalqillah.mail@gmail.com
# Material Source
[Jeffrey R. Chasnov(2012), Numerical Methods](https://www.math.ust.hk/~machas/numerical-methods.pdf)
