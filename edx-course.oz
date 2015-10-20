declare
fun {SumDigitsR N}
   if (N==0) then 0
   else (N mod 10) + {SumDigitsR (N div 10)}
   end
end

{Browse {SumDigitsR 314159}}

declare
fun {Sum N}
   local SumAcc in
      fun {SumAcc N Acc}
	 if N == 0 then Acc
	 else {SumAcc N-1 Acc + {Pow N 2}}
	 end
      end
      {SumAcc N 0}
   end
end

{Browse {Sum 6}}

declare
fun {MainMirror Int}
    local Mirror in
        fun {Mirror Int Acc}
	   if Int == 0 then Acc
	   else {Mirror (Int div 10) (Int mod 10 + Acc * 10)}
	   end
        end
        {Mirror Int 0}
    end
end

{Browse {MainMirror 1234}}
{Browse {MainMirror 4321}}




   
   
