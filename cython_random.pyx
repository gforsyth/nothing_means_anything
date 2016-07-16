cimport numpy
cimport cython
import numpy
from libc.time cimport clock

def run_this(int n, int loops):
    cdef int i, tic, toc
    cdef numpy.ndarray[numpy.float_t, ndim=2] a = numpy.random.random((n, n))

    for i in range(loops):
        a = numpy.random.random((n, n))
        tic = clock()
        numpy.sin(a)
        toc = clock()
        print((toc - tic) / 1e6)
