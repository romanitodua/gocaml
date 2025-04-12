include Cstubs_inverted

let fib (n:int) :int = 
  let rec loop (i:int) (a:int) (b:int) :int =
    if i = n then a
   else loop (i+1) (b) (a+b) 
in loop 0 0 1;;

module Fibonnaci (I : INTERNAL) =
struct
  let () = I.internal "fib" Ctypes.(int @-> returning int)
    fib
end
