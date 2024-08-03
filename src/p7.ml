let is_prime n = 
  let rec check i =
    i * i > n || (n mod i != 0 && check (i+1))
  in
  n > 1 && check 2 

let nth_prime n = 
  let rec find_prime count current = 
    if is_prime current then 
      if count = n then current 
      else find_prime (count+1) (current + 1)
    else
      find_prime count (current + 1)
  in
  find_prime 1 2 
  
let () =
  print_string ">";
  flush stdout;
  let input = read_int () in 
  let result = nth_prime input in 
  Printf.printf "The %d th prime number is %d\n" input result

  
