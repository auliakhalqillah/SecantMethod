! HOW TO COMPILE THROUGH COMMAND LINE (CMD OR TERMINAL)
! gfortran -c secant.f95
! gfortran -o secant secant.o
!
! The program is open source and can use to numeric study purpose.
! The program was build by Aulia Khalqillah,S.Si., M.Si
!
! email: auliakhalqillah.mail@gmail.com
! ==============================================================================
program secant
implicit none

real :: x1, x2, xr
real :: error, f
integer :: i
character(len=20) :: info
character(len=30) :: fmt
write(*,*)""
write(*,*)"---------------------------------"
write(*,*)"SECANT METHOD - FINDING ROOT"
write(*,*)"---------------------------------"
write(*,*) ""
write (*,"(a)",advance='no') "Initial xr, x1:"
read *, x1
write (*,"(a)",advance='no') "Final xr, x2:"
read*, x2

fmt = "(a12,a13,a13,a13,a25)"
write (*,*) ""
write(*,fmt)"ITER","X[xr]","F(X)","INFO","ERROR"
! Start root calculation
error = 1e-7
i = 1
open(unit=1, file='secant.txt',status='replace')
    info = "Not Convergence"
    do while (abs((x2-x1)/x1) > error)
        ! calculate the root
        xr = x2 - ((f(x2)*(x2-x1))/(f(x2)-f(x1)))
        if (isnan(xr) .or. (f(xr) > huge(f(xr))) .or. isnan(f(xr))) then
            x1 = x2
            x2 = xr
            i = i + 1
        else  
            if (abs(f(xr)) < error) then
                info = "Convergence"
            else
                info = "Not Convergence"
            end if
            x1 = x2
            x2 = xr
            i = i + 1
        end if
        ! Write the result on terimnal display and save it to file
        write (*,*) i, xr, f(xr),info, abs((x2-x1)/x1)
        write (1,*) i, xr, f(xr),info, abs((x2-x1)/x1)
    end do
close(1)
end program

function f(x)
implicit none
real :: x, f
f = (x**2) - (2*x) + 1
! f = (x**3) + (3*(x**2)) + (3*x) + 1
end function
