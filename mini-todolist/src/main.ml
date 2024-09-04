type todo = {
  id: int;
  task: string;
  isCompleted: bool;
}

let create_task id task = { id; task; isCompleted = false }

let complete_task todo = { todo with isCompleted = true }

let show_task todo = 
  Printf.printf "Task: %s (Completed: %b) \n" todo.task todo.isCompleted

let main () = 
  let task1 = create_task 1 "Buy milk" in
  let task2 = create_task 2 "Buy eggs" in
  show_task task1;
  complete_task task2 |> show_task

let () = main ()