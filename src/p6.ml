(*
-> sum of the squares of the first ten natural numbers is
*)

let sum_of_squares n =
  (* using fold left *)
  (* https://courses.cs.cornell.edu/cs3110/2021sp/textbook/hop/fold_left.html *)
  (* 0 is the start of the list *)
  (* create the list *)
  let nums = List.init n (fun i -> i + 1) in 
  List.fold_left (fun acc x -> acc + x * x) 0 nums 


(* sum of numbers in a range *)
let sum_of_numbers n = 
  (* create the list *)
  let nums = List.init n (fun i -> i + 1) in
  List.fold_left (fun acc x -> acc + x) 0 nums


let () =
  print_string "Input: ";
  flush stdout;
  let input = read_int () in
  let result1 = sum_of_squares input in
  let result2 = sum_of_numbers input in
  let square_of_sum = result2 * result2 in
  Printf.printf "The difference between the sum of the squares of the first %d natural numbers and the square of the sum is %d\n" 
    input (square_of_sum - result1)
