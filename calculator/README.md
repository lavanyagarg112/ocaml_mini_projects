# OCaml Calculator

This is a simple command-line calculator written in OCaml that supports basic arithmetic operations such as addition, subtraction, multiplication, and division.

## Features

- **Addition** (`+`)
- **Subtraction** (`-`)
- **Multiplication** (`*`)
- **Division** (`/`)

The calculator reads an arithmetic expression from the user in the format `number operator number`, performs the operation, and returns the result.

## Prerequisites

To run this program, you need to have OCaml installed on your system. You can install it via OPAM or follow [OCaml installation instructions](https://ocaml.org/docs/install).

### Installing OCaml via OPAM (recommended)

```bash
opam install ocaml
```

## Folder Structure

```bash
calculator/
├── src/
│   └── main.ml      # Source code for the calculator
└── README.md        # This README file
```

## Usage

1. **Clone the repository** (or create your own folder structure as shown above).

2. **Navigate to the project directory**:

```bash
cd calculator
```

3. **Compile the program**:

```bash
ocamlc -o calculator src/main.ml
```

4. **Run the program**:

```bash
./calculator
```

### Example Usage

The program will prompt you to enter an expression in the following format:

```
Enter expression (e.g., 3 + 4):
```

You can input a valid arithmetic expression, such as `3 + 4` or `6 * 7`, and the program will output the result.

```
Enter expression (e.g., 3 + 4): 3 + 4
Result: 7.000000
```

### Supported Operators

- **Addition** (`+`): Adds two numbers.
- **Subtraction** (`-`): Subtracts the second number from the first.
- **Multiplication** (`*`): Multiplies two numbers.
- **Division** (`/`): Divides the first number by the second. Note: Division by zero will raise an error.

## Error Handling

- If you enter an invalid input, the program will print an error and exit:
  - Invalid input format
  - Division by zero
  - Invalid operator (e.g., `%`, `^`)

## Known Issues

- The calculator only supports operations between two numbers (binary operations).
- The calculator expects the input in the exact format `number operator number` (with spaces between).

## Future Improvements

- Add support for more advanced operations (e.g., exponentiation, modulus).
- Add support for multiple expressions (e.g., `3 + 4 * 2`).
- Improve input parsing to handle more flexible formats.