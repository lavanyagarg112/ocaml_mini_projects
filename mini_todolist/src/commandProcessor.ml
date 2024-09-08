open Todo
open TodoList

module CommandProcessor = struct
  let rec process_commands todo_list =
    print_endline "\n*** \n";
    print_endline "Enter a command (add, show, mark, unmark, delete, sort, exit): ";
    let command = read_line () in 

    match command with
    | "add" ->
      print_endline "Enter the task description: ";
      let shouldContinue = ref true in
      let task_description = read_line () in
      print_endline "Enter the task priority (Low, Medium, High): ";
      let task_priority = 
        try 
          Todo.string_to_priority (read_line ())
        with 
        | Failure msg ->
          print_endline msg;
          shouldContinue := false;
          Low
      in

      if !shouldContinue then (
        let task_id = List.length todo_list + 1 in
        let todo_list = TodoList.add_task todo_list (Todo.create_task task_id task_description task_priority) in
        print_endline "Task added!";
        process_commands todo_list
      )
      else (
        process_commands todo_list  
      )

    | "show" ->
      print_endline "All tasks: ";
      TodoList.show_all todo_list;
      process_commands todo_list

    | "mark" ->
      print_endline "Enter the task ID to mark as completed: ";
      let task_id = int_of_string (read_line ()) in
      let todo_list = 
        try
          let todo_list = TodoList.complete_task todo_list task_id in
          print_endline "Task marked as completed!";
          todo_list
        with
        | TodoList.TaskNotFound id ->
            Printf.printf "Task with ID %d not found.\n" id;
            todo_list
      in
      process_commands todo_list

    | "unmark" ->
      print_endline "Enter the task ID to mark as uncompleted: ";
      let task_id = int_of_string (read_line ()) in
      let todo_list = 
        try
          let todo_list = TodoList.uncomplete_task todo_list task_id in
          print_endline "Task marked as uncompleted!";
          todo_list
        with
        | TodoList.TaskNotFound id ->
            Printf.printf "Task with ID %d not found.\n" id;
            todo_list
      in
      process_commands todo_list

    | "delete" -> 
      print_endline "Enter the task ID to delete: ";
      let task_id = int_of_string (read_line ()) in
      let todo_list = 
        try
          let todo_list = TodoList.remove_task todo_list task_id in
          print_endline "Task deleted!";
          todo_list
        with
        | TodoList.TaskNotFound id ->
            Printf.printf "Task with ID %d not found.\n" id;
            todo_list
      in
      
      process_commands todo_list

    | "sort" ->
      print_endline "Tasks sorted by priority!";
      TodoList.show_all (TodoList.sort_by_priority todo_list);
      process_commands todo_list

    | "exit" ->
      print_endline "Goodbye!";
      
    | _ ->
      print_endline "Invalid command, please try again.";
      process_commands todo_list
  
end