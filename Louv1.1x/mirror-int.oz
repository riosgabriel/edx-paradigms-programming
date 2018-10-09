declare
fun {Mirror Int}
   local MirrorInner in
      fun {MirrorInner Int Acc}
	 if Int == 0 then Acc
	 else
	    {MirrorInner (Int div 10) (Acc * 10) + Int mod 10}
	 end
      end

      {MirrorInner Int 0}
   end
end

{Browse {Mirror 1234} == 4321}
{Browse {Mirror 554433} == 334455}