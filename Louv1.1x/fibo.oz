declare
fun {NaiveFib N}
   if N == 0 then 1
   else {NaiveFib N-1} + {NaiveFib N-2}
   end
end

declare
fun {Fib N}
   local FibAux in
      fun {FibAux N Acc1 Acc2}
	 if N == 0 then Acc1
	 else {FibAux N-1 Acc2 Acc1 + Acc2}
	 end
      end
      {FibAux N 0 1}
   end
end

{Browse {NaiveFib 5} == 5}
{Browse {Fib 5} == 5}
{Browse {Fib 10} == 55}
