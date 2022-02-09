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

real :: xi, xf, xr
real :: error, f
real :: start, finish
integer :: i
character(len=20) :: info
character(len=30) :: fmt
write(*,*)""
write(*,*)"---------------------------------"
write(*,*)"SECANT METHOD - FINDING ROOT"
write(*,*)"---------------------------------"
write(*,*) ""
write (*,"(a)",advance='no') "Initial xr, xi:"
read *, xi
write (*,"(a)",advance='no') "Final xr, xf:"
read*, xf

fmt = "(a12,a13,a13,a13,a25)"
write (*,*) ""
write(*,fmt)"ITER","X[xr]","F(X)","INFO","ERROR"
! Start root calculation
call cpu_time(start)
error = 1e-7
i = 1
open(unit=1, file='secant.txt',status='replace')
    info = "Not Convergence"
    do while (abs((xf-xi)/xf) > error)
        ! calculate the root
        xr = xf - ((f(xf)*(xf-xi))/(f(xf)-f(xi)))
        if (isnan(xr) .or. (f(xr) > huge(f(xr))) .or. isnan(f(xr))) then
            xi = xf
            xf = xr
            i = i + 1
        else  
            if (abs(f(xr)) < error) then
                info = "Convergence"
            else
                info = "Not Convergence"
            end if
            xi = xf
            xf = xr
            i = i + 1
        end if
        ! Write the result on terimnal display and save it to file
        write (*,*) i, xr, f(xr),info, abs((xf-xi)/xf)
        write (1,*) i, xr, f(xr),info, abs((xf-xi)/xf)
    end do
close(1)
call cpu_time(finish)
print '("Time = ",f6.3," seconds.")',finish-start
end program

function f(x)
implicit none
real :: x, f
f = (x**2) - (2*x) + 1
! f = (x**3) + (3*(x**2)) + (3*x) + 1
end function
