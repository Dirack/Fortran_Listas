PROGRAM sample_1
REAL :: a, b
INTEGER :: n, i, j
i = 10.
j = 3
n = i / j
a = i / j
b = REAL(i) / j
write(*,*) a,b,n
END PROGRAM sample_1
