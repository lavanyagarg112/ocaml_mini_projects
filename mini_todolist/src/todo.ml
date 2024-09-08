type priority = High | Medium | Low
module Todo = struct 
  
  type t = {
    id: int;
    task: string;
    priority: priority;
    isCompleted: bool;
  }

  let string_to_priority = function
    | "Low" -> Low
    | "Medium" -> Medium
    | "High" -> High
    | _ -> failwith "Invalid priority, please enter Low, Medium, or High."

  let create_task id task priority = { id; task; priority; isCompleted = false }

  let complete_task todo = { todo with isCompleted = true }

  let uncomplete_task todo = { todo with isCompleted = false }

  let show_task todo =
    Printf.printf "Task: %s (Priority: %s, Completed: %b)\n"
      todo.task (match todo.priority with Low -> "Low" | Medium -> "Medium" | High -> "High")
      todo.isCompleted

end