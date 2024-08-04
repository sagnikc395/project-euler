(* collatz seqeunce *)

open Stdlib

let collatz n = 
  let rec collatz_helper n count = 
    if n = 1 then 
      count 
    else if n mod 2  =0 then 
      collatz_helper (n/2) (count + 1)
    else
      collatz_helper (3 * n + 1) ( count + 1)
  in
  collatz_helper n 0 
  
let () =
  let curr_max = ref 0 in 
  for i = 1 to 1_000_000 do
    let len = collatz i in 
    if len > !curr_max then curr_max := len 
  done;
  Printf.printf "%d\n" !curr_max

