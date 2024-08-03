let divBy3 n = 
  if n mod 3 = 0 then true else false 

let divBy5 n = 
  if n mod 5 = 0 then true else false 

let divBy3Or5 n = 
  divBy3 n || divBy5 n 

(* ref : https://batsov.com/articles/2022/10/31/ocaml-tips-implementing-a-range-function/*)
let rec range start stop =
  List.init (stop - start) ( fun i -> i + start)

let rec filter f l =
  match l with
  | [] -> []
  | h :: t -> if f h then h :: filter f t else filter f t
  
let rec sum l =
  match l with
  | [] -> 0
  | h :: t -> h + sum t
  
let result =
  range 1 1000
  |> filter divBy3Or5
  |> sum
  
let () = 
  Printf.printf "%d\n" result