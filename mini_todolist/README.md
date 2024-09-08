# ToDo List Application in OCaml

This is a simple command-line ToDo List application implemented in **OCaml**. It allows you to add, mark, unmark, delete, and sort tasks by priority. The project demonstrates core OCaml concepts like pattern matching, exception handling, recursion, and mutable state with references.

## Features

- **Add a task**: Add a new task with a description and priority (Low, Medium, or High).
- **Show all tasks**: Display all tasks along with their priority and completion status.
- **Mark a task as completed**: Mark a specific task as completed.
- **Unmark a task**: Mark a specific task as incomplete.
- **Delete a task**: Remove a task from the list by its ID.
- **Sort tasks by priority**: Sort tasks by their priority, where `High` comes before `Medium`, and `Medium` comes before `Low`.
- **Exit**: Exit the application gracefully.

## Usage

### Running the Application

To run the ToDo list application, follow these steps:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/lavanyagarg112/ocaml_mini_projects.git
   cd ocaml_mini_projects/mini_todolist
   ```

2. **Build the project using Dune**:
   If you are using **Dune** as the build system, run the following command:
   ```bash
   dune build
   ```

3. **Run the application**:
   After building the project, run the following command to start the ToDo list application:
   ```bash
   dune exec src/main.exe
   ```

### Commands

Once the application is running, you can enter the following commands:

- **`add`**: Add a new task. You will be prompted to enter a task description and priority (Low, Medium, High).
- **`show`**: Display all tasks with their ID, description, priority, and completion status.
- **`mark`**: Mark a task as completed by entering its ID.
- **`unmark`**: Unmark a task as completed by entering its ID.
- **`delete`**: Delete a task by entering its ID.
- **`sort`**: Sort tasks by priority.
- **`exit`**: Exit the application.

### Example Usage

```bash
*** 
Enter a command (add, show, mark, unmark, delete, sort, exit):
add
Enter the task description: 
Buy groceries
Enter the task priority (Low, Medium, High): 
High
Task added!

***
Enter a command (add, show, mark, unmark, delete, sort, exit): 
show
Task: Buy groceries (Priority: High, Completed: false)

***
Enter a command (mark, unmark, delete, sort, exit): 
mark
Enter the task ID to mark as completed: 
1
Task marked as completed!

***
Enter a command (add, show, mark, unmark, delete, sort, exit): 
exit
Goodbye!
```

## Project Structure

- **`src/`**: Contains the source code for the application.
  - **`todo.ml`**: Defines the `Todo` module for representing tasks.
  - **`todoList.ml`**: Defines the `TodoList` module for managing the list of tasks.
  - **`commandProcessor.ml`**: Handles user input and command processing.
  - **`main.ml`**: The entry point of the application.

## Requirements

- **OCaml**: Make sure you have OCaml installed. You can install it via `opam`:
  ```bash
  opam install ocaml
  ```
- **Dune**: The project uses Dune as the build system. Install it via `opam`:
  ```bash
  opam install dune
  ```

## Future Enhancements

### 1. **Better Exception Handling**
   - Improve the exception handling logic to catch more specific errors, such as invalid input types, malformed commands, or edge cases.
   - Implement custom exceptions to provide more informative feedback to the user and ensure the application doesn't crash unexpectedly.

### 2. **Task Editing**
   - Add the ability to **edit an existing task's description** or **priority** without deleting and recreating it.

### 3. **Task Deadlines**
   - Implement a feature to allow users to set deadlines for tasks and get reminders for upcoming deadlines.

### 4. **Task Categories or Labels**
   - Allow users to categorize tasks into different groups or assign labels for better organization (e.g., "Work", "Personal").

### 5. **Task Search and Filter**
   - Add a feature to **search for tasks by keyword** or **filter tasks by priority**, completion status, or category.

### 6. **Persistent Storage**
   - Add functionality to save tasks to a file and load them on application startup, allowing the user to keep their tasks between sessions.

### 7. **Undo Feature**
   - Implement an **undo** feature that allows users to reverse their most recent action, such as undoing a task deletion or completion.

---