type priority = High | Medium | Low
module Todo = struct 
  
  type t = {
    id: int;
    task: string;
    priority: priority;
    isCompleted: bool;
  }

  let create_task id task priority = { id; task; priority; isCompleted = false }

  let complete_task todo = { todo with isCompleted = true }

  let show_task todo =
    Printf.printf "Task: %s (Priority: %s, Completed: %b)\n"
      todo.task (match todo.priority with Low -> "Low" | Medium -> "Medium" | High -> "High")
      todo.isCompleted

end