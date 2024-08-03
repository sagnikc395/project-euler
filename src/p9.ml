let find_special_pythagorean_triplet () =
  let rec search a b =
    let c = 1000 - a - b in
    if a >= b then None
    else if a * a + b * b = c * c then Some (a, b, c)
    else if b >= c then search (a + 1) (a + 2)
    else search a (b + 1)
  in
  search 1 2

let () =
  match find_special_pythagorean_triplet () with
  | Some (a, b, c) -> 
      Printf.printf "Pythagorean triplet found: %d, %d, %d\n" a b c;
      Printf.printf "Their product is: %d\n" (a * b * c)
  | None -> print_endline "No Pythagorean triplet found that satisfies the condition."