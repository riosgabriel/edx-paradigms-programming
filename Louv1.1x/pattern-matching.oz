declare
fun {Sum L}
   case L
   of H|T then H + {Sum T}
   [] nil then 0
   end
end

{Browse {Sum [1 2 3]}}

declare
fun {Append L1 L2}
   case L1
   of nil then L2
   [] H|T then H|{Append T L2}
   end
end

{Browse {Append [10 11] [12 13]}}

declare
fun {Prefix L1 L2}
   case L1
   of nil then true
   [] H|T then if(L1.1 == L2.1) then {Prefix L1.2 L2.2}
	       else false
	       end
   end
end

fun {FindString L1 L2}
   case L2
   of nil then
      case L1
      of nil then true
      else false
      end
   [] H|T then if(L1.1 == L2.1) then {Prefix L1.2 L2.2}
	       else {FindString L1 L2.2}
	       end
   end
end

{Browse {FindString [z] [a b c d e f]}}



