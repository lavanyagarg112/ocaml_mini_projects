open CommandProcessor
open TodoList


let main () =
  let todo_list = TodoList.empty in
  CommandProcessor.process_commands todo_list

let () = main ()