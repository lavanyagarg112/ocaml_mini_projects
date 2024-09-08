open TodoList
open Todo

let main () =
  print_endline "Enter the task description: ";
  let task_description = read_line () in
  print_endline "Enter the task priority (Low, Medium, High): ";
  let task_priority = Todo.string_to_priority (read_line ()) in
  let todo_list = TodoList.empty in
  let todo_list = TodoList.add_task todo_list (Todo.create_task 1 task_description task_priority) in

  print_endline "All tasks: ";
  TodoList.show_all todo_list;

  let sorted_todo_list = TodoList.sort_by_priority todo_list in
  print_endline "All tasks sorted by priority: ";
  TodoList.show_all sorted_todo_list


let () = main ()