declare
fun {Fib N}
   local FibAux in
      fun {FibAux N Acc1 Acc2}
	 if N == 0 then Acc1
	 else {FibAux N -1 Acc2 Acc1 + Acc2}
	 end
      end
      {FibAux N 0 1}
   end
end

{Browse {Fib 12}}
{Browse {Fib 7}}