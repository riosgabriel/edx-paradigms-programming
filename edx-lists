declare
E=[2 4 6]
O=[1 3 5]

{Browse {Append O E}}

{Browse [10 11 12] == 10 | 11 | 12 | nil}

declare
Lista = [9 10 11]
{Browse Lista.2 | [12 13]}

declare
fun {AppendLists L1 L2}
   if(L1 == nil) then L2
   else L1.1 | {AppendLists L1.2 L2}
   end
end

{Browse {AppendLists [10 11] [12 13]}}

declare
Lista = [9 10 11]
{Browse 1 | Lista}

declare
fun {Nth L N}
   if(N == 1) then L.1
   else {Nth L.2 N-1}
   end
end

{Browse {Nth [10 11] 3}}

declare
fun {Fact N}
   local Factorial FacList in
      fun {Factorial N}
	 local FactorialAcc in
	    fun {FactorialAcc N Acc}
	       if N == 0 then Acc
	       else {FactorialAcc N-1 Acc * N}
	       end
	    end
	    
	    {FactorialAcc N 1}
	 end
      end
           
      fun {FacList N L}
	 if N == 0 then L
	 else {FacList N-1 {Factorial N} | L}
	 end
      end
      {FacList N nil}
   end
end

{Browse {Fact 4}}





