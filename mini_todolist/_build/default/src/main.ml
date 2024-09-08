open TodoList
open Todo

let main () =
  let todo_list = TodoList.empty in
  let todo_list = TodoList.add_task todo_list (Todo.create_task 1 "Buy Milk" Medium) in
  let todo_list = TodoList.add_task todo_list (Todo.create_task 2 "Buy eggs" High) in

  print_endline "All tasks: ";
  TodoList.show_all todo_list;

  let todo_list = TodoList.complete_task todo_list 1 in
  print_endline "All tasks after completing task 1: ";
  TodoList.show_all todo_list;

  (* let todo_list = TodoList.remove_task todo_list 2 in
  print_endline "All tasks after removing task 2: ";
  TodoList.show_all todo_list; *)

  let sorted_todo_list = TodoList.sort_by_priority todo_list in
  print_endline "All tasks sorted by priority: ";
  TodoList.show_all sorted_todo_list


let () = main ()