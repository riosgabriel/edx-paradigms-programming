%Genericity
declare
fun {Map F L}
   case L of nil then nil
   [] H|T then {F H}|{Map F T}
   end
end

{Browse {Map fun {$ X} X*X end [1 2 3]}}

%Instantiation
declare
fun {MakeAdd A}
   fun {$ X} X + A
   end
end

Add7 = {MakeAdd 7}
{Browse {Add7 10}}

%Compose functions
declare
fun {Compose F G}
   fun {$ X} {F {G X}}
   end
end

Fnew={Compose fun {$ X} X*X end
      fun {$ X} X+1 end}

{Browse {Fnew 2}}
{Browse {{Compose Fnew Fnew}2}}

%FoldL implementation
declare
fun {FoldL L F U}
   case L
   of nil then U
   [] H|T then {FoldL T F {F U H}}
   end
end

S={FoldL [5 6 7] fun {$ X Y} X+Y end 0}

{Browse S}

%Challenge
declare
fun {M Int}
   fun {$} Int|{M Int -1} end
end

Test = {M 5}

{Browse {Test}}


%Second Challenge
declare
fun {Build D C}
   fun {$ X}
      local Find in
	 fun {Find L1 L2}
	    case L1 of H|T then
	       if H == X then L2.1
	       else {Find T L2.2}
	       end
	    else bottom
	    end
	 end
	 {Find D C}
      end
   end
end

D = [1 2 3]
C = [~1 ~2 ~3]
F = {Build D C}
{Browse {F 1}}

   