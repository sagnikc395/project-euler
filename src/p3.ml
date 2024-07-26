(* to find the largest prime factor of the number 600_851_475_143 *)


(* largest prime factor using euclid's formula *)

(* it's all recursion down the way *)

let rec largest_prime_factor n =
  let rec find_factor i n = 
  if i * i > n then n 
  else if n mod i = 0 then 
    let n' = n / i in 
    find_factor i n'
  else
    find_factor (i+1) n
  in 
    find_factor 2 n 



let () =
  print_string ">: ";
  flush stdout; 
  let s = read_int () in 
  let result = largest_prime_factor s in 
  Printf.printf "The result to get the largest prime factor of %d is %d\n" s result 
