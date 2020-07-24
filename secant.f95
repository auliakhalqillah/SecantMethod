program secant
implicit none

real :: x1, x2, root
real :: error, f
integer :: i
character(len=20) :: info
character(len=30) :: fmt

write (*,"(a)",advance='no') "Initial root, x1:"
read *, x1
write (*,"(a)",advance='no') "Final root, x2:"
read*, x2

fmt = "(a12,a13,a13,a13,a25)"
write (*,*) ""
write(*,fmt)"ITER","X[ROOT]","F(X)","INFO","ERROR"

error = 1e-6
i = 1
open(unit=1, file='secant.txt',status='replace')
    do while (abs(x2-x1) > error)
        root = x2 - ((f(x2)*(x2-x1))/(f(x2)-f(x1)))

        if (isnan(x2) .or. (f(x2) > huge(f(x2))) .or. isnan(f(x2))) then
            x1 = x2
            x2 = root
            i = i + 1
        else  
            if (abs(f(x2)) < error) then
                info = "Convergence"
            else
                info = "Not Convergence"
            end if

            write (*,*) i, x2, f(x2),info, abs(x2-x1)
            write (1,*) i, x2, f(x2),info, abs(x2-x1)
            x1 = x2
            x2 = root
            i = i + 1
        end if
    end do
close(1)

end program

function f(x)
implicit none
real :: x, f
f = (x**2) - (2*x) + 1
end function
