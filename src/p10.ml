(* 
let nth_prime n = 
  let rec find_prime count current = 
    if is_prime current then 
      if count = n then current 
      else find_prime (count+1) (current + 1)
    else
      find_prime count (current + 1)
  in
  find_prime 1 2  *)

let is_prime n = 
  let rec check i = 
    i * i > n || (n mod i !=0 && check (i+1)) 
  in 
  n > 1 && check 2 

let primes_up_to n = 
  let sieve = Array.make (n+1) true in 
  sieve.(0) <- false;
  sieve.(1) <- false;
  for i = 2 to int_of_float (sqrt (float_of_int n)) do 
    if sieve.(i) then 
      let rec mark j = 
        if j <= n then 
          (sieve.(j) <- false;
        mark (j+i))
      in
      mark (i * i) 
  done;
  let primes = ref [] in 
  for i = n downto 2 do 
    if sieve.(i) then primes := i :: !primes 
  done;
  !primes 

let sumList lst = 
  let rec sum_helper lst acc =
    match lst with 
    | [] -> acc 
    | head :: tail -> sum_helper tail (acc + head)
  in 
  sum_helper lst 0 

let () =
  let limit = 2_000_000 in 
  let lis = primes_up_to limit in 
  let result = sumList lis in 
  Printf.printf "Sum of primes up to %d is %d\n" limit result

