include Cstubs_inverted


(* specify where to put the generated files*)
(* let () = Generator.generate "bin/generated" *)

(*line below must be called only after generated .ml file is present*)

include Fib.Fibonnaci(Fib_bindings)