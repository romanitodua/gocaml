package main

// -rpath is used to locate the libfib.so at runtime

/*
#cgo CFLAGS: -I.
#cgo LDFLAGS: -L. -Wl,-rpath,${SRCDIR} -lfib
#include "fib.h"
*/
import "C"
import "fmt"

func main() {
	n := 10
	result := C.fib(C.int(n))
	fmt.Printf("Fibonacci of %d = %d\n", n, int(result))
}
