open Todo

module TodoList = struct
  type t = Todo.t list

  let empty = []

  let add_task todo_list todo = todo :: todo_list

  let remove_task todo_list id =
    List.filter (fun todo -> todo.Todo.id <> id) todo_list

  let complete_task todo_list id =
    List.map (fun todo -> if todo.Todo.id = id then Todo.complete_task todo else todo) todo_list

  let show_all todo_list =
    List.iter Todo.show_task todo_list
end
