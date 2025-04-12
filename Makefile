# ocamlc -g -c stub/init.c       
# mv init.o _build/init.o   

# ocamlfind opt -thread -c -o _build/fib.cmx   -I _build/generated   -package ctypes.stubs,ctypes.foreign   caml/bin/fib.ml
# ocamlfind opt -thread -c -o  _build/generator.cmx   -I _build -I _build/generated   -package ctypes.stubs,ctypes.foreign   caml/bin/generator.ml
# ocamlfind opt -o _build/generate -thread -linkpkg   -package ctypes.stubs,ctypes.foreign   _build/fib.cmx _build/generator.cmx
# ./_build/generate _build/generated

#ocamlfind ocamlc -thread -ccopt -fPIC -c -o _build/generated/fib.o _build/generated/fib.c -package ctypes.stubs,ctypes.foreign

#ocamlfind opt -thread -c -o _build/generated/fib_bindings.cmx \
  -I _build/generated -I _build/lib -package ctypes.stubs,ctypes.foreign \
  _build/generated/fib_bindings.ml

# ocamlfind opt -thread -c -o _build/main.cmx -I _build/generated -I _build -package ctypes.stubs,ctypes.foreign _build/fib.cmx caml/bin/main.ml

# ocamlfind opt -o _build/libfib.so -thread -linkpkg -output-obj -runtime-variant _pic -verbose -package ctypes.stubs,ctypes.foreign _build/init.o _build/fib.cmx  _build/generated/fib_bindings.cmx _build/main.cmx _build/generated/fib.o