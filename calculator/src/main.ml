let read_input () =
  print_string "Enter expression (e.g., 3 + 4): ";
  read_line ()

let parse_input input =
  let parts = String.split_on_char ' ' input in
  match parts with
  | [a; op; b] -> (a, op, b)
  | _ -> failwith "Invalid input"

let convert_to_numbers (a_str, op, b_str) =
  let a = float_of_string a_str in
  let b = float_of_string b_str in
  (a, op, b)

let calculate (a, op, b) =
  match op with
  | "+" -> a +. b
  | "-" -> a -. b
  | "*" -> a *. b
  | "/" -> if b = 0. then failwith "Division by zero" else a /. b
  | _ -> failwith "Invalid operator"


let main () =
  let input = read_input () in
  let (a_str, op, b_str) = parse_input input in
  let (a, op, b) = convert_to_numbers (a_str, op, b_str) in
  let result = calculate (a, op, b) in
  Printf.printf "Result: %f\n" result

let () = main ()