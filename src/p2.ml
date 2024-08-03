let seqLimit = 4_000_000

let isEven n = 
  if n mod 2 = 0 then true else false 

let isLessThanOrEqual limit n = 
  n <= limit 

let nextFibo (a,b) = (b,a+b)

let rec fibsUpTo limit (a,b) =
  if a > limit then []
  else a :: fibsUpTo limit (nextFibo (a,b))

let sumEvenFibos limit =
  fibsUpTo limit (1,2)
  |> List.filter isEven
  |> List.filter (isLessThanOrEqual limit)
  |> List.fold_left ( + ) 0

let result = 
  sumEvenFibos seqLimit

let () =
  Printf.printf "%d\n" result 

