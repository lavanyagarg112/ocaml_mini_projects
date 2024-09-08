module Todo = struct 
  type t = {
    id: int;
    task: string;
    isCompleted: bool;
  }

  let create_task id task = { id; task; isCompleted = false }

  let complete_task todo = { todo with isCompleted = true }

  let show_task todo = 
    Printf.printf "Task: %s (Completed: %b) \n" todo.task todo.isCompleted

end