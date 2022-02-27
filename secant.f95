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
real :: limiterror, f, error
real :: start, finish
integer :: i, info
character(len=50) :: fmt
write(*,*)""
write(*,*)"---------------------------------"
write(*,*)"SECANT METHOD - FINDING ROOT"
write(*,*)"---------------------------------"
write(*,*) ""
write (*,"(a)",advance='no') "Initial xr, xi:"
read *, xi
write (*,"(a)",advance='no') "Final xr, xf:"
read*, xf

fmt = "(a12,a13,a13,a15,a20,a15,a13,a18,a25)"
write (*,*) ""
write(*,fmt)"ITER","Xi", "Xf", "F(Xi)", "F(Xf)", "XR[ROOT]","F(Xr)","INFO","ERROR"
! Start root calculation
call cpu_time(start)
limiterror = 1e-5
i = 1
open(unit=1, file='secant.txt',status='replace')
    info = 0 ! not convergence
    do while (abs((xf-xi)/xf)*100 > limiterror)
        ! calculate the root
        xr = xf - ((f(xf)*(xf-xi))/(f(xf)-f(xi)))

        ! Check the convergency
        if (abs(f(xr)) < limiterror) then
            info = 1 ! convergence
        else
            info = 0 ! not convergence
        end if

        ! Shift value
        xi = xf
        xf = xr

        ! Calculate error
        if (xr == 0) then
            error = 100
        else
            error = abs((xr-xi)/xr)*100
        end if

        ! Stop the process if the final boundary is infinity
        if (xf > huge(xf)) then
            exit
        end if

        ! Write the result on terimnal display and save it to file
        write (*,*) i, xi, xf, f(xi), f(xf), xr, f(xr),info, error
        write (1,*) i, xi, xf, f(xi), f(xf), xr, f(xr),info, error

        i = i + 1
    end do
close(1)
call cpu_time(finish)
print '("Time = ",f12.8," seconds.")',finish-start
end program

function f(x)
implicit none
real :: x, f
f = (x**2) - (2*x) + 1
! f = (x**3) + (3*(x**2)) + (3*x) + 1
! f = x-exp(-x/3)
end function
