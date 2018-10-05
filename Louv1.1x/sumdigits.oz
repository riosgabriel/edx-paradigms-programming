declare
fun {SumDigits N}
   if (N == 0) then 0
   else (N mod 10) + {SumDigits (N div 10)} end
end

{Browse {SumDigits 123}}
{Browse {SumDigits 101}}

% Factorial function
% 0! = 1
% n! = n * (n-1)! when n > 0
declare
fun {Fact1 N}
   if N==0 then 1
   else N*{Fact1 N-1} end
end

{Browse {Fact1 10}}

%Principle of communicating vases
% n! = i! * a
%    = i * (i-1)! * a
%    = (i-1)! * (i*a)
% We have i'=i-1 and a'=i*a
declare
fun {Fact2 I A}
   if I == 0 then A
   else {Fact2 I-1 I*A} end
end

{Browse {Fact2 10 1}}

